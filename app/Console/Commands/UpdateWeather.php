<?php

namespace App\Console\Commands;

use App\Http\Controllers\TileController;
use App\Models\Task;
use App\Models\Tile;
use Carbon\Carbon;
use Illuminate\Console\Command;


class UpdateWeather extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'weather:update';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Update Weather Api Status';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $task = Task::where('name', 'update_weather')->first();

        if (empty($task)) {
            $task = Task::create(['running' => 1, 'name' => 'update_weather', 'updated_at' => '2022-05-15']);
        } else{
            $task->update(['running' => 1]);
        }
        $newTaskDate = Carbon::now();

        $tiles = Tile::all();

        foreach ($tiles as $tile) {

            $tileRefreshTime = $tile->updated_at->addMinutes($tile->refresh_interval);
   
            if($newTaskDate > $tileRefreshTime){

                $this->info(Carbon::now()->format('Ymd-His') . " - Updating Status :" . $tile->city);
                TileController::updateStatus($tile->id);
                $this->info(Carbon::now()->format('Ymd-His') . " - Done update");
            }
        }
        $this->info("Job - completed");

        if (isset($data['next']) and !empty($data['next'])) {
            $this->info('Weather updated : End ' . $data['next']);
            $task->update(['running' => 0, 'updated_at' => $data['next']]);
        } else {
            $task->update(['running' => 0, 'updated_at' => $newTaskDate]);
        }
    }
}
