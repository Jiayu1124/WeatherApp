<?php

namespace App\Http\Controllers;

use App\Models\Tile;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        //get latest 
        $tiles = Tile::orderBy('created_at', 'desc')->take(8)->get();
        
        return view('welcome', compact('tiles'));
    }

   





}
