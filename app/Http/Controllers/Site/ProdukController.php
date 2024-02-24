<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Produk;

class ProdukController extends Controller
{
    public function getIndex($id)
    {
        $produk = Produk::find($id);

        // Tambahkan penanganan kesalahan jika produk tidak ditemukan

        return view('site.produk.index', ['produk' => $produk]);
    }


}
