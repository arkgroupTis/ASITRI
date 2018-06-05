<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Asignacion;
use App\Docente;
use App\proyectos;

class AsignacionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tribunales = Docente::orderBy('apePaternoDoc', 'asc')
        ->join('asignacion','docente.idDoc', '=', 'asignacion.idDoc')
        ->where('asignacion.rol', '=' , 'tribunal')
        ->groupBy('docente.idDoc')
        ->get();
        foreach ($tribunales as $key => $value) 
        {
            $value->cantidad = Asignacion::where([
                'rol' => 'tribunal', 
                'estado' => 'Activo',
                'idDoc' => $value->idDoc
            ])->count();
            $titulos = collect([]);
            foreach ($value->asignacion as $key => $value2) 
            {

                if ($value2->estado== 'Activo') 
                {
                    $titulos->push($value2->proyecto->titulo);
                }
            }
            $value->proyecto = $titulos;
            $value->i = 1;
        }

        return view('tribunales.index', compact(['tribunales']));
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
        //
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

    public function asignacion(){
        return view('tribunales.asignacion');
    }
}
