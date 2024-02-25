<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\User;


class DummyUsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'user',
            'email' => 'user@gmail.com',
            'password' => Hash::make('user123'),
            'role' => 'user',
            'nomor' => '087872887925'
        ]);

        DB::table('users')->insert([
            'name' => 'admin123',
            'email' => 'admin123@gmail.com',
            'password' => Hash::make('admin123'),
            'role' => 'admin',
            'nomor' => '087872887222'
        ]);

        DB::table('users')->insert([
            'name' => 'Bramantio',
            'email' => 'bramantio@gmail.com',
            'password' => Hash::make('bramantio'),
            'role' => 'user',
            'nomor' => '087872887921'
        ]);

        // Menambahkan data pengguna tambahan
        User::create([
            'name' => 'John Doe',
            'email' => 'john.doe@example.com',
            'password' => Hash::make('password'),
            'role' => 'user',
            'nomor' => '081234567890'
        ]);

        // Tambahkan data pengguna tambahan lainnya sesuai kebutuhan
    }
}
