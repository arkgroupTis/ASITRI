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

Route::get('/docentes', function(){
	return view ('docentes');
});
Route::get('/d&p',function()
{
	return view ('d&p');
});
Route::get('/tabla4',function()
{
	return view ('tabla4');
});

Route::get('/areas',function()
{
	return view ('areas.create');
});

Route::get('/areas/edit',function()
{
	return view ('areas.edit');
});

Route::auth();

Route::get('/home', 'HomeController@index');
