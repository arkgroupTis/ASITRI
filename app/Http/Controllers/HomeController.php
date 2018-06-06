<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use App\Proyecto;
use App\Asignacion;
use App\Proyecto_estudiante;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $mytime = \Carbon\Carbon::now();
        $proyectos = Proyecto::join('proyecto_estudiante', 'proyecto.idProyecto', '=', 'proyecto_estudiante.idProyecto')
            
            ->where('proyecto_estudiante.estado', 'activo')
            ->get();

        foreach ($proyectos as $proyecto) {
            if ($proyecto->fechaFin <= $mytime) {
                proyecto_estudiante::where('idProyecto', $proyecto->idProyecto)
                    ->update(
                        array(
                            'estado' => 'inactivo',
                        )
                    );
                asignacion::where('idProyecto', $proyecto->idProyecto)
                        ->update(
                        array(
                            'estado' => 'Terminado',
                        )
                    );
            }
        }

        return view('home');
    }
}
