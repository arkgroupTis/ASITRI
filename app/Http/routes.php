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
	return view ('docentes.maindoc');
});
Route::get('/renuncia', function(){
	return view ('renuncia');
});

Route::get('/areas',function()
{
	return view ('areas.create');
});

Route::get('/areas/edit',function()
{
	return view ('areas.edit');
});

Route::get('/proyectos',function()
{
	return view ('proyectos.mainproyecto');
});

Route::get('/nuevoDocente', function () {
    return view('docentes.nuevoDocente');
});
Route::auth();

Route::get('/home', 'HomeController@index');

Route::get('/create', function () {
    return view('proyectos/create');
});

Route::get('/newDoc', function () {
    return view('docentes/newDoc');
});

Route::get('/newStudent', function () {
    return view('students/newStudent');
});


Route::resource('/estudiante', 'EstudianteController');
Route::resource('/docentes', 'DocenteController');
