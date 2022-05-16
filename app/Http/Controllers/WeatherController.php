<?php

namespace App\Http\Controllers;

use App\Models\Forecast;
use Carbon\Carbon;
use Illuminate\Http\Request;
use GuzzleHttp\Client;

class WeatherController extends Controller
{
    public static function getWeatherInformation($city)
    {
        $api_key = "0e3d079387ccfa65c732011994d2c1b6";

        $location_result = WeatherController::weatherLocationApi($city, $api_key);

        if($location_result['status'] == 'error'){
            return $location_result;
        }
        
        $condition_result = WeatherController::weatherConditionApi($location_result['lat'], $location_result['lon'], $api_key);
        $forecast_result = WeatherController::weatherForecastAPI($location_result['lat'], $location_result['lon'], $api_key);

        //success
        $result = ['status' => 1, 'type' => "Success", 'location' => $location_result, 'condition' => $condition_result, 'forecast' => $forecast_result];
        return $result;
    }


    public static function weatherLocationApi($city, $api_key)
    {
        $url = "http://api.openweathermap.org/geo/1.0/direct?q={$city}&limit=1&appid={$api_key}";
        $headers = [
            'Content-Type'  =>      'text/html; charset=UTF-8',
            'User-Agent'    =>      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36',
            'x-requested-with'  =>  'XMLHttpRequest'
        ];


        $client = new Client(['headers' => $headers]);

        $respond = $client->get($url);

        $result = json_decode($respond->getBody()->getContents());
        $response = [];
        

        //check there is invalid city researched
        if (empty($result)) {
            $response = [];
            $response['status'] = 'error';
            $response['message'] = 'Incorect City Name, Please try again';

            return $response;
        }

        //change data to collection
        $data = collect($result[0])->toArray();
        $data['status'] = 'success';
        

        //remove unnecessary information from api
        unset($data['local_names']);

        return $data;
    }

    public static function weatherConditionApi($lat, $lon, $api_key)
    {
         $url = "https://api.openweathermap.org/data/2.5/weather?lat={$lat}&lon={$lon}&appid={$api_key}";

         $headers = [
             'Content-Type'  =>      'text/html; charset=UTF-8',
             'User-Agent'    =>      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36',
             'x-requested-with'  =>  'XMLHttpRequest'
         ];
 
         $client = new Client(['headers' => $headers]);
 
         $respond = $client->get($url);
         $result = json_decode($respond->getBody()->getContents());
 
         $data = collect($result)->toArray();
         
         //remove unnecessary information from api
         unset($data['coord']);
         unset($data['base']);
         unset($data['visibility']);
         unset($data['cloud']);
         unset($data['dt']);
         unset($data['sys']);
         unset($data['cod']);
         unset($data['name']);
         unset($data['id']);
         unset($data['timezone']);

         return $data;
    }


    public static function weatherForecastAPI($lat, $lon, $api_key)
    {
        $url = "https://api.openweathermap.org/data/2.5/forecast?lat={$lat}&lon={$lon}&appid={$api_key}";

        $headers = [
            'Content-Type'  =>      'text/html; charset=UTF-8',
            'User-Agent'    =>      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.71 Safari/537.36',
            'x-requested-with'  =>  'XMLHttpRequest'
        ];

        $client = new Client(['headers' => $headers]);

        $respond = $client->get($url);
        $result = json_decode($respond->getBody()->getContents());

        $data = collect($result)->toArray();

         //remove unnecessary information from api
         unset($data['cod']);
         unset($data['message']);
         unset($data['cnt']);
         unset($data['city']);
        
        return $data;
    }

    public static function storeForecast($data, $id){
       
        //remove all previous forecast result;
        Forecast::where('tile_id', $id)->delete();
        $count = 0;

        foreach($data['list'] as $index => $list){
            $forecast_data = [];
            $arr = collect($list)->toArray();

            //getting temperature
            $temperature = collect($arr['main'])->toArray();
            $temperature = $temperature['temp'] - 273.15;
        
            //getting situation
            $situation_data = collect($arr['weather'][0])->toArray();
            $situation =  $situation_data['main'];
            $description = $situation_data['description'];
            $icon = $situation_data['icon'];
            
    
            //getting forecast time
            $time = $arr['dt_txt'];

            $forecast_data['tile_id'] = $id;
            $forecast_data['temperature'] = $temperature;
            $forecast_data['situation'] = $situation;
            $forecast_data['time'] = $time;
            $forecast_data['description'] = $description;
            $forecast_data['icon'] = $icon;
            
            $now = Carbon::now();

            //only sotre maximum 5
            if(($time > $now) && $count < 5){
                Forecast::create($forecast_data);
                $count++;
            }
            
        }
    }
}
