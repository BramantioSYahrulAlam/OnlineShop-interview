<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProdukSeeder extends Seeder
{
    public function run()
    {
        DB::table('produk')->insert([
            'id' =>'8',
            'nama' => 'Hoodie',
            'kategori' => 'Wanita',
            'deskripsi' => 'meningkatkan resistensi terhadap api',
            'harga' => 790.00,
            'stok' => 4,
            'gambar1' => 'global/landingpage/images/hoodie1.jpg',
            'gambar2' => 'global/landingpage/images/hoodie2.jpg',
            'gambar3' => 'global/landingpage/images/hoodie3.jpg',
        ]);
        // Tambahkan data lainnya sesuai kebutuhan
        DB::table('produk')->insert([
            'id' =>'9',
            'nama' => 'Tas Wanita',
            'kategori' => 'Wanita',
            'deskripsi' => 'Menambah Penyimpanan Barang',
            'harga' => 290.00,
            'stok' => 21,
            'gambar1' => 'global/landingpage/images/taswanita1.jpg',
            'gambar2' => 'global/landingpage/images/taswanita2.jpg',
            'gambar3' => 'global/landingpage/images/taswanita3.jpg',
        ]);
        DB::table('produk')->insert([
            'id' =>'10',
            'nama' => 'Cincin',
            'kategori' => 'Wanita',
            'deskripsi' => 'Meningkatkan Kemampuan Basic Attack',
            'harga' => 190.00,
            'stok' => 5,
            'gambar1' => 'global/landingpage/images/cincin1.jpg',
            'gambar2' => 'global/landingpage/images/cincin2.jpg',
            'gambar3' => 'global/landingpage/images/cincin3.jpg',
        ]);


    }
}
