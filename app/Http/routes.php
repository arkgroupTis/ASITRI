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

Route::get('/proyectos','ProyectoController@index');

Route::get('/nuevoDocente', function () {
    return view('docentes.nuevoDocente');
});
Route::auth();

Route::get('/home', 'HomeController@index');

Route::get('/create', 'ProyectoController@create');
Route::post('/create', 'ProyectoController@store');

Route::resource('/proyectos', 'proyectoController');

Route::get('/newDoc', function () {
    return view('docentes/newDoc');
});

Route::get('/newStudent', function () {
    return view('students/newStudent');
});


Route::resource('/estudiante', 'EstudianteController');

Route::resource('/Tribunales', 'DocenteController@tribunales');

/**
Route::get('/Tribunales', function(){
	return view('Tribunales/Tribunales');
});
*/

Route::resource('/AsignacionTribunales', 'DocenteController@asignacionTribunales');

/**
Route::get('/AsignacionTribunales', function(){
	return view('Tribunales/AsignacionTribunales');
});
*/
Route::resource('/docentes', 'DocenteController');