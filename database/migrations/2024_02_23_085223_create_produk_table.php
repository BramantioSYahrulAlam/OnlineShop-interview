<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProdukTable extends Migration
{
    public function up()
    {
        Schema::create('Produk', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->string('kategori');
            $table->text('deskripsi');
            $table->decimal('harga', 10, 2);
            $table->integer('stok');
            $table->string('gambar1');
            $table->string('gambar2');
            $table->string('gambar3');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('Produk');
    }
}
