<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Produk;

class HomeController extends Controller
{
    public function getIndex()
    {
        $produks = Produk::all();
        return view('site.home.index', ['produks' => $produks]);
    }
}
