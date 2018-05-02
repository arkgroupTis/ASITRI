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
        $docentes = Docente::orderBy('apePaternoDoc', 'asc')->paginate(5);
        return view('docentes.maindoc', compact('docentes'));
    }
    // @foreach($docentes as $docente)
    //     <tr data-id="{{ $docente->idDoc }}">
    //         <td>{{ $docente->ciDoc }}</td>
    //         <td>{{ $docente->nombreDoc }}</td>
    //         <td>{{ $docente->tituloDoc }}</td>
    //         <td>3</td>
    //         <td>
    //             <a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a>
    //         </td>
    //     </tr>
    //     @endforeach
    //       </tbody>
    //     </table>
    //     {{ $docentes->links() }}
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
            Estudiante::create([
            'ciDocc' => $request['ciDocc'],
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
