<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Proyecto_estudiante;
use App\Asignacion;
class Proyecto_estudianteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $this->validate($request, [
            'idProyecto' => 'required|integer',
            'estudiante1' => 'required|integer',
            'tutor1' => 'required|integer',
        ]);
        Proyecto_estudiante::create([
            'idProyecto' => $request->idProyecto,
            'idEstudiante' => $request->estudiante1,
            'estado' => 'activo',
        ]);
        if(!empty($request->estudiante2))
        {Proyecto_estudiante::create([
            'idProyecto' => $request->idProyecto,
            'idEstudiante' => $request->estudiante2,
            'estado' => 'activo',
        ]);}
        Asignacion::create([
            'idProyecto' => $request->idProyecto,
            'idDoc' => $request->tutor1,
            'rol' => 'tutor',
            'estado' => 'Activo',
        ]);
        if(!empty($request->tutor2))
        {Asignacion::create([
            'idProyecto' => $request->idProyecto,
            'idDoc' => $request->tutor2,
            'rol' => 'tutor',
            'estado' => 'activo',
        ]);}
        return response()->json([
            'message' => 'Se agrego correctamente!',
        ]);

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
