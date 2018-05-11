<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Area;
class AreaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $areas = Area::orderBy('idArea', 'asc')->paginate(500);
        return view('areas.edit', compact('areas'));
    }
    public function subarea()
    {
        $areas = Area::orderBy('nombreArea', 'asc')->paginate(500);
        return view('areas.sub', compact('areas'));
    }
    public function create_area()
    {
        $areas = Area::orderBy('nombreArea', 'asc')->paginate(500);
        return view('docentes.newDoc', compact('areas'));
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
            'nombreArea' => 'required|string',
            'descripcionArea' => 'required|string',
        ]);
        Area::create([
            'nombreArea' => $request['nombreArea'],
            'descripcionArea' => $request['descripcionArea'],
            'cod_subarea' => $request['cod_subarea'],
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
