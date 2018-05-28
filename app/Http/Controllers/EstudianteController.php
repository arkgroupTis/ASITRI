<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Estudiante;
use App\Proyecto;
use App\Docente;
use App\Proyecto_estudiante;
use App\Asignacion;
use DB;
class EstudianteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $estudiantes = Estudiante::orderBy('id', 'des');

        $estudiantes_t = Estudiante::orderBy('apellidoEst', 'asc')
        ->join('proyecto_estudiante', 'estudiante.idEstudiante', '=', 'proyecto_estudiante.idEstudiante')
        ->where('estado', 'inactivo')
        ->get();
        $idEst = collect([]);
        foreach ($estudiantes_t as $est) {
            $idEst->push($est->idEstudiante);
        }

        


        $estudiantes_v = Estudiante::orderBy('apellidoEst', 'asc')
        // ->join('proyecto_estudiante', 'estudiante.idEstudiante', '=', 'proyecto_estudiante.idEstudiante')
        ->whereNotIn('estudiante.idEstudiante', $idEst)
        ->get();
        // dd([$idEst, $estudiantes_v]);
        return view('estudiante.index', compact(['estudiantes_v', 'estudiantes_t']));

        foreach ($estudiantes_v as $key => $value) {
            $value->estadoE = Proyecto_estudiante::where('idEstudiante', $value->idEstudiante)
            ->where('estado', 'activo')
            ->where('estado', 'cancelado')
            ->where('estado', 'inactivo')
            ->echo ("asignado");
        }
    }
    public function create_sub()
    {
        $estudiantes = Estudiante::orderBy('apellidoEst', 'asc')->paginate(500);
        return view('proyectos.create', compact('estudiantes'));
    }
    public function proyc_est()
    {

        $proyc_est = Proyecto_estudiante::select('idEstudiante')->get();
        $array = collect([]);
        foreach ($proyc_est as $proy) {
            $array->push($proy->idEstudiante);
        }
        $proyectos = Proyecto_estudiante::select('idProyecto')->get();
        $array1 = collect([]);
        foreach ($proyectos as $proy) {
            $array1->push($proy->idProyecto);
        }
        $tutores = Asignacion::select(DB::raw('count(*) as user_count, idDoc'))
        ->where('rol','=','tutor')
        ->where('estado','=','Activo')
        ->groupby('idDoc')
        ->get();
        $array2 = collect([]);
        foreach ($tutores as $proy) {
            if($proy->user_count<10)
            {$array2->push($proy->idDoc);}
        }
        dd($array2);
        $res[2] = Docente::whereNotIn('idDoc',$array2)->get();
        $res[1] = Estudiante::whereNotIn('idEstudiante',$array)->get();
        $res[0] = Proyecto::whereNotIn('idProyecto',$array1)->get();
        return view('estudiante.proyecto_est', compact('res'));
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
            'ciEst' => 'required|string',
            'nombreEst' => 'required|string',
            'apellidoEst' => 'required|string',
            'emailEst' => 'required|email',
            'telefono' => 'required|integer',
        ]);
        Estudiante::create([
            'ciEst' => $request['ciEst'],
            'nombreEst' => $request['nombreEst'],
            'apellidoEst' => $request['apellidoEst'],
            'emailEst' => $request['emailEst'],
            'telefono' => $request['telefono'],
            'idCarrera' => $request['idCarrera'],
        ]);
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
        return response()->json([
            'estudiante' => Estudiante::where('idEstudiante', $id)->firstOrFail(),
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
        $this->validate($request, [
            'ciEst' => 'required|string',
            'nombreEst' => 'required|string',
            'apellidoEst' => 'required|string',
            'emailEst' => 'required|email',
            'telefono' => 'integer',
        ]);
        Estudiante::where('idEstudiante', $id)->update(
            array(
                'ciEst' => $request->ciEst,
                'nombreEst' => $request->nombreEst,
                'apellidoEst' => $request->apellidoEst,
                'emailEst' => $request->emailEst,
                'telefono' => $request->telefono,
                'idCarrera' => $request->idCarrera,
            )
        );
        return response()->json([
            'message' => 'Se modifico correctamente!',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Estudiante::where('idEstudiante', $id)->delete();
        return response()->json([
            'mensaje' => 'Se elimino correctamente!',
        ]);
    }
}
