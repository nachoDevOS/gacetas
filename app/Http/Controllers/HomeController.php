<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Models
use App\Models\PublicationsType;

class HomeController extends Controller
{
    public function list_by_types($slug){
        $type = PublicationsType::where('slug', $slug)->where('deleted_at', NULL)->first();
        if($type){
            return view('list-by-types', compact('type'));
        }else{
            return redirect('/');
        }
    }
}
