<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DummyUsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Adipati',
            'email' => 'adipati@gmail.com',
            'password' => Hash::make('123456'),
            'role'=>'user'
        ]);

        foreach($userdata as $key => $val){
            User::create($val);
        };
    }
}
