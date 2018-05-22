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


Route::get('/newStudent', function () {
    return view('students/newStudent');
});

Route::resource('/estudiante', 'EstudianteController');
Route::resource('/estudianteproyecto', 'ProyectoController@create_sub');
//Route::resource('/tutorproyecto', 'DocenteController@create_sub');
Route::resource('/proyecto_est', 'EstudianteController@proyc_est');

Route::resource('/estudianteproyecto', 'EstudianteController@create_sub');
//Route::resource('/estudianteproyecto', 'DocenteController@create_sub');
Route::get('/estudiante/{id}/proyecto', 'ProyectoController@proyectoEstudiante');
Route::get('/estudiante/proyecto/{id}/tribunales', 'ProyectoController@posiblesTribunales');
Route::get('/estudiante/proyecto/{id}/renuncia', 'ProyectoController@renunciaTribunales');
Route::get('/estudiante/proyecto/{idProy}/{idDoc}/asignacion', 'ProyectoController@asignarTribunal');
Route::post('/estudiante/proyecto/renuncia', 'ProyectoController@renunciaTribunal');

Route::resource('/tribunales', 'AsignacionController');

Route::get('/tribunales/asignacion', 'AsignacionController@asignacion');

Route::resource('subarea','AreaController@subarea');

Route::resource('/docentes', 'DocenteController');
Route::resource('/newdoc', 'AreaController@create_area');

Route::resource('/areasCatalogo', 'AreaController');