<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Docente;

class DocenteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $docentes = Docente::orderBy('apePaternoDoc', 'asc')->paginate(500);
        return view('docentes.maindoc', compact('docentes'));
    }

    public function tribunales()
    {
        $docentes = Docente::orderBy('apePaternoDoc', 'asc')->paginate(500);
        return view('Tribunales.Tribunales', compact('docentes'));
    }

    public function asignacionTribunales()
    {
        $docentes = Docente::orderBy('apePaternoDoc', 'asc')->paginate(500);
        return view('Tribunales.AsignacionTribunales', compact('docentes'));   
    }
    public function create_sub()
    {
        $docentes = Docente::orderBy('apePaternoDoc', 'asc')->paginate(500);
    return view('proyectos.create', compact('docentes'));
    }
                // @foreach($docentes as $docente)
                // <option> {{ $docente->apePaternoDoc }} {{ $docente->apeMaternoDoc }} {{ $docente->nombreDoc }} </option>
                // @endforeach 
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
            'ciDoc' => 'required|string',
            'nombreDoc' => 'required|string',
            'apePaternoDoc' => 'required|string',
            'apeMaternoDoc' => 'required|string',
            'emailDoc' => 'required|email',
            'telefonoDoc' => 'required|integer',
            'tituloDoc' => 'required|string',
        ]);
            Docente::create([
            'ciDoc' => $request['ciDoc'],
            'nombreDoc' => $request['nombreDoc'],
            'apePaternoDoc' => $request['apePaternoDoc'],
            'apeMaternoDoc' => $request['apeMaternoDoc'],
            'emailDoc' => $request['emailDoc'],
            'telefonoDoc' => $request['telefonoDoc'],
            'tituloDoc' => $request['tituloDoc'],
            'cargaHoraria' => $request['cargaHoraria'],
            'codigoDoc' => $request['codigoDoc'],
        ]);
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
