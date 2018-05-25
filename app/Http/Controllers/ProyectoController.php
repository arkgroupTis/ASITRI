<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Proyecto;
use App\Estudiante;
use App\Area;
use App\Modalidad;
use App\Proyecto_has_area;
use App\Proyecto_estudiante;
use App\Docente;
use App\Asignacion;
use App\Renuncia;

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
        $estudiantes = Estudiante::orderBy('apellidoEst', 'asc')->paginate(500);
        $docentes = Docente::orderBy('apePaternoDoc', 'asc')->paginate(500);
        $areas = Area::orderby('nombreArea','asc')
        ->where('clasificacion','area')
        ->get();
        $subareas = Area::orderby('nombreArea','asc')
        ->where('clasificacion','subarea')
        ->get();
        $modalidades = Modalidad::orderby('nombreMod','asc')->paginate(500);
        

        $res[0]=$estudiantes;
        $res[1]=$docentes;
        $res[2]=$areas;
        $res[3]=$modalidades;
        $res[4]=$subareas;
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

        $mytime = \Carbon\Carbon::now();



        /*$this->validate($request, [
            'titulo' => 'required|string',
            'objetivos' => 'required|string',
            'descripcion' => 'required|string',
            'periodo' => 'required|string',
            'idModalidad' => 'required|integer',

        
        ]);*/

        //PARA IMPRIMIR DATOS//
        /*return response()->json([
            'titulo' => $request['titulo'],
            'objetivos'=>$request['objetivos'],
            'descripcion'=>$request['descripcion'],
            'fechaIni'=>$request['fechaIni'],
            'fechaFin'=>$request['fechaFin'],
            'periodo'=>$request['periodo'],
            'sesionDeConsejo'=>$request['sesionDeConsejo'],
            'idModalidad'=>$request['idModalidad'],
            //'estadoProyecto'=>$request['estadoProyecto'],
            'fechaRegistroProy'=>$mytime,
        ]);*/

       Proyecto::create([
            'titulo' => $request['titulo'],
            'objetivos'=>$request['objetivos'],
            'descripcion'=>$request['descripcion'],
            'fechaIni'=>$request['fechaIni'],
            'fechaFin'=>$request['fechaFin'],
            'periodo'=>$request['periodo'],
            'sesionDeConsejo'=>$request['sesionDeConsejo'],
            'idModalidad'=>$request['idModalidad'],
            //'estadoProyecto'=>$request['estadoProyecto'],
            'fechaRegistroProy'=>$mytime,

            //area
            //estudiante1
            //estudiante2
            //tutor1
            //tutor2
        ]);
        $id = Proyecto::max('idProyecto');
        $areas = $request['area'];
        $subareas = $request['subarea'];
        
        
        //dd([$id, $ida, $mytime->toDateString()]);
            foreach ($areas as $area) {
             Proyecto_has_area::create([
            'idProyecto' => $id,
            'idArea' => $area,
        ]);
               }

               foreach ($subareas as $subarea) {
             Proyecto_has_area::create([
            'idProyecto' => $id,
            'idArea' => $subarea,
        ]);
               }    
         
        return redirect('proyectos');

       /* return response()->json([
            'message' => 'Se agrego correctamente!',
        ]);*/
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

    public function proyectoEstudiante($idEstudiante){
        $proy_est = Proyecto_estudiante::where('idEstudiante', $idEstudiante)->where('estado', 'activo')->first();
        if ($proy_est) {
            return view('proyectos.motivo', compact('proy_est'));
        }
        else {
            return view('proyectos.motivo', compact('proy_est'));
        }
        
    }

    public function posiblesTribunales($idProyecto){
        $proyecto = Proyecto::where('idProyecto', $idProyecto)->firstOrFail();
        $area = collect([]);
        foreach ($proyecto->proyecto_has_area as $areas) {
            $area->push($areas->area->nombreArea);
        }
        $docentes = Docente::select('docente.idDoc', 'nombreDoc', 'apePaternoDoc', 'apeMaternoDoc', 'nombreArea')
        ->join('tiene', 'docente.idDoc', '=', 'tiene.idDoc')
        ->join('area', 'tiene.idArea', '=', 'area.idArea')
        // ->whereIn('area.nombreArea', $area)
        ->orderBy('apePaternoDoc', 'asc')
        ->paginate(5);
        foreach ($docentes as $key => $value) {
            $value->cant = Asignacion::where('idDoc', $value->idDoc)->where('estado', 'activo')->where('rol', 'tribunal')->count();
            $value->tribunal = Asignacion::where('idDoc', $value->idDoc)->where('idProyecto', $idProyecto)->where('estado', 'activo')->where('rol', 'tribunal')->count();
        }
        return view('tribunales.asignacion')->with([
            'proyecto' => $proyecto,
            'docentes' => $docentes,
        ]);
    }

    public function renunciaTribunales($idProyecto){
        $proyecto = Proyecto::where('idProyecto', $idProyecto)->firstOrFail();
        $docentes = Docente::select('docente.idDoc', 'nombreDoc', 'apePaternoDoc', 'apeMaternoDoc', 'nombreArea')
        ->join('tiene', 'docente.idDoc', '=', 'tiene.idDoc')
        ->join('area', 'tiene.idArea', '=', 'area.idArea')
        ->join('asignacion', 'docente.idDoc', '=', 'asignacion.idDoc')
        ->where([
            ['asignacion.rol', '=', 'tribunal'],
            ['asignacion.idProyecto', '=', $proyecto->idProyecto],
            ['asignacion.estado', '=', 'activo'],
        ])->paginate(5);
        foreach ($docentes as $key => $value) {
            $value->cant = Asignacion::where('idDoc', $value->idDoc)->where('estado', 'activo')->where('rol', 'tribunal')->count();
            $value->tribunal = 1;
        }
        return view('tribunales.asignacion')->with([
            'proyecto' => $proyecto,
            'docentes' => $docentes,
        ]);
    }

    public function asignarTribunal($idProyecto, $idDoc){
        //controlar solo tres tribunales
        $count_tribu = Asignacion::where([
            ['rol', '=', 'tribunal'],
            ['idProyecto', '=', $idProyecto],
            ['estado', '=', 'activo'],
        ])->count();
        if ($count_tribu < 3) {//controla la cantidad de tribunales
            Asignacion::create([
                'rol' => 'tribunal',
                'idProyecto' => $idProyecto,
                'idDoc' => $idDoc,
                'estado' => 'activo',
            ]);
        }
        return back();
    }
    public function renunciaTribunal(Request $request){
        $Asig = Asignacion::where('idProyecto', $request->idProyecto)
        ->where('idDoc', $request->idDoc)
        ->where('rol', 'tribunal')
        ->where('estado', 'activo')
        ->first();
        Asignacion::where('idProyecto', $request->idProyecto)
        ->where('idDoc', $request->idDoc)
        ->where('rol', 'tribunal')
        ->update(
            array(
                'estado' => 'inactivo',
            )
        );
        Renuncia::create([
            'fechaRenuncia' => $request->idProyecto,
            'motivosRenuncia' => $request->motivo,
            'idAsig' => $Asig->idAsig,
        ]);
        return response()->json([
            'message' => 'todo okey!',
        ]);
    }
}
