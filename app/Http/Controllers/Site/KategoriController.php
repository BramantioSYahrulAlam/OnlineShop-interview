<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Produk;

class KategoriController extends Controller
{
    public function getIndex(){

        $produks = Produk::all();
        return view('site.kategori.index', ['produks' => $produks]);
    }
}
