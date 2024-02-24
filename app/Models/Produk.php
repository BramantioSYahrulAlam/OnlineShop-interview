<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
    use HasFactory;

    protected $table = 'produk'; // Sesuaikan dengan nama tabel yang diinginkan

    protected $fillable = [
        'nama',
        'kategori',
        'deskripsi',
        'harga',
        'stok',
        'gambar1',
        'gambar2',
        'gambar3',
    ];

    // Jika Anda tidak ingin menggunakan kolom timestamps (created_at dan updated_at)
    public $timestamps = false;
}
