<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Docente;
use App\Area;
use App\Asignacion;
use App\Tiene;

class DocenteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $docentes = Docente::orderBy('apePaternoDoc', 'asc')
        ->where('tipo', 'docente')
        ->get();

        $profesionales = Docente::orderBy('apePaternoDoc', 'asc')
        ->where('tipo', 'profesional')
        ->get();

        $proDoc = Docente::orderBy('apePaternoDoc', 'asc')
        ->where('tipo', 'profesional')
        ->where('tipo', 'docente')
        ->get();

        foreach ($proDoc as $key => $value) {
            $value->cantTr = Asignacion::where('idDoc', $value->idDoc)
            ->where('estado', 'Activo')
            ->where('rol', 'tribunal')
            ->count();
        }

        foreach ($proDoc as $key => $value) {
            $value->cantTu = Asignacion::where('idDoc', $value->idDoc)
            ->where('estado', 'Activo')
            ->where('rol', 'tutor')
            ->count();
        }

        foreach ($docentes as $key => $value) {
            $value->cantTrib = Asignacion::where('idDoc', $value->idDoc)
            ->where('estado', 'Activo')
            ->where('rol', 'tribunal')
            ->count();
        }

        foreach ($docentes as $key => $value) {
            $value->cantTut = Asignacion::where('idDoc', $value->idDoc)
            ->where('estado', 'Activo')
            ->where('rol', 'tutor')
            ->count();
        }

        foreach ($profesionales as $key => $value) {
            $value->cantTribP = Asignacion::where('idDoc', $value->idDoc)
            ->where('estado', 'Activo')
            ->where('rol', 'tribunal')
            ->count();
        }

        foreach ($profesionales as $key => $value) {
            $value->cantTutP = Asignacion::where('idDoc', $value->idDoc)
            ->where('estado', 'Activo')
            ->where('rol', 'tutor')
            ->count();
        }

        return view('docentes.maindoc', compact(['docentes', 'profesionales']));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $areas = Area::orderBy('nombreArea', 'asc')->paginate(500);
        return view('docentes.newDoc', compact('areas'));
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
            'ciDoc' => 'required|string',
            'nombreDoc' => 'required|string',
            'apePaternoDoc' => 'required|string',
            'apeMaternoDoc' => 'required|string',
            'emailDoc' => 'required|email',
            'telefonoDoc' => 'required|integer',
            'tituloDoc' => 'required|string',
            'tipo' => 'required|string'

        ]);
            if( $request['tipo'] == "docente"){
                $this->validate($request, [
                'cargaHoraria' => 'required|string'
        ]);
                
            }


            Docente::create([
            'ciDoc' => $request['ciDoc'],
            'nombreDoc' => $request['nombreDoc'],
            'apePaternoDoc' => $request['apePaternoDoc'],
            'apeMaternoDoc' => $request['apeMaternoDoc'],
            'emailDoc' => $request['emailDoc'],
            'telefonoDoc' => $request['telefonoDoc'],
            'tituloDoc' => $request['tituloDoc'],
            'cargaHoraria' => $request['cargaHoraria'],
            'tipo' => $request['tipo'],
        ]);

        $id = Docente::max('idDoc');
        $areas = $request['area'];
        
            foreach ($areas as $area) {
             Tiene::create([
            'idDoc' => $id,
            'idArea' => $area,
        ]);
               }
            
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
       return response()->json([
            'docente' => Docente::where('idDoc', $id)->firstOrFail(),
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
