<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Proyecto;
use App\Estudiante;
use App\Docente;
use App\Area;
use App\Modalidad;

class ProyectoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return view ('proyectos.mainproyecto');
        $proyectos = Proyecto::orderBy('idProyecto', 'des')->paginate(500);
        return view('proyectos.mainproyecto', compact('proyectos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('proyectos/create');
    }
    public function create_sub()
    {
        $estudiantes = Estudiante::orderBy('apellidoEst', 'asc')->paginate(500);
        $docentes = Docente::orderBy('apePaternoDoc', 'asc')->paginate(500);
        $areas = Area::orderby('nombreArea','asc')->paginate(500);
        $modalidades = Modalidad::orderby('nombreMod','asc')->paginate(500);
        

        $res[0]=$estudiantes;
        $res[1]=$docentes;
        $res[2]=$areas;
        $res[3]=$modalidades;
        return view('proyectos.create', compact('res'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        Proyecto::create([
            'titulo' => $request['nombreProy'],
            'objetivos'=>$request['objetivos'],
            'descripcion'=>$request['descripcion'],
            'periodo'=>$request['periodo'],
            'sesionDeConsejo'=>$request['sesion'],
            'idModalidad'=>$request['modalidad'],
            'fechaIni'=>$request['fechaIni'],
            'fechaFin'=>$request['fechaFin'],
            'estadoProyecto'=>$request['estadoProyecto'],
            'fechaRegistroProy'=>$request['fechaRegistro'],
        ]);
        return resource('/estudianteproyecto');
        // return response()->json([
        //     'message' => 'Se agrego correctamente!',
        // ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        return response()->json([
            'proyecto' => Proyecto::where('idProyecto', $id)->firstOrFail(),
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
