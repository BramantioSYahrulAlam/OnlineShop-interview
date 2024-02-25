<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');

    $router->resource('penggunas', PenggunaController::class);


    // Route::get('/sesi', function () {
    //     return redirect('/admin');
    // });

    $router->resource('users', UserController::class);
    $router->resource('produks', ProdukController::class);

});
