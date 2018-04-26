<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/pruebas', function(){
	return view ('pruebas');
});
Route::get('/maindoc',function()
{
	return view ('maindoc');
});
Route::get('/renuncia', function(){
	return view ('renuncia');
});

Route::auth();

Route::get('/home', 'HomeController@index');
