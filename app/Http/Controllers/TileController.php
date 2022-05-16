<?php

namespace App\Http\Controllers;

use App\Models\Tile;
use Carbon\Carbon;
use Illuminate\Http\Request;

class TileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function get(Request $request)
    {
        $tiles = Tile::orderBy('created_at', 'desc')->get();
        return response()->json($tiles);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        $api_data = [];

        $result = WeatherController::getWeatherInformation($data['city']);

        if($result['status'] == 'error'){
            return $result;
        }

        //getting name
        $city = $result['location']['name'];
        $state = $result['location']['state'];
        $country_code = $result['location']['country'];
        

 
        //getting temperature
        $temperature = collect($result['condition']['main'])->toArray();
        $temperature = $temperature['temp'] - 273.15;
        
        //getting situation
        $situation_data = collect($result['condition']['weather'][0])->toArray();
        $situation =  $situation_data['main'];
        $description = $situation_data['description'];
        $icon = $situation_data['icon'];

        //compile retrieved data
        $tile_data['city'] = $city;
        $tile_data['refresh_interval'] = $data['refresh_interval'];
        $tile_data['temperature'] = $temperature;
        $tile_data['situation'] = $situation;
        $tile_data['description'] = $description;
        $tile_data['state'] = $state;
        $tile_data['country_code'] = $country_code;
        $tile_data['icon'] = $icon;

        $tile = Tile::where('city', 'LIKE', '%' . $city . '%')->first();

        if (!$tile) {
            $tile = Tile::create($tile_data);
        } else {
            $tile->update($tile_data);
        }

        $result = WeatherController::storeForecast($result['forecast'], $tile->id);

        return response()->json("Success");
    }


    public static function updateStatus($id)
    {
        $tile = Tile::find($id);
        $data = [];
        
        $data['city'] = $tile->city;
        $result = WeatherController::getWeatherInformation($data['city']);
        
        //getting temperature
        $temperature = collect($result['condition']['main'])->toArray();
        $temperature = $temperature['temp'] - 273.15;
        
        //getting situation
        $situation_data = collect($result['condition']['weather'][0])->toArray();
        $situation =  $situation_data['main'];
        $description = $situation_data['description'];
        $icon = $situation_data['icon'];

        //compile retrieved data
        $tile_data['temperature'] = $temperature;
        $tile_data['situation'] = $situation;
        $tile_data['description'] = $description;
        $tile_data['icon'] = $icon;
        $tile_data['updated_at'] = Carbon::now();

        $tile->update($tile_data);

        $result = WeatherController::storeForecast($result['forecast'], $tile->id);

        return 1;
    }

    public function delete($id)
    {
        Tile::destroy($id);

        return redirect()->route('home');
    }


}
