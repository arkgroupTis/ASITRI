<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use Mail;
use App\Http\Controllers\Controller;

class EmailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $docente = \App\Docente::first();
        // dd($docente->emailDoc);
        // Mail::send(['text' => 'view'], ['user' => $docente], function ($m) use ($docente) {
        //     $m->from('hello@app.com', 'Your Application');
        //     $m->to($docente->emailDoc, $docente->nombreDoc);
        // });
        Mail::raw('hola buenas tardes, usted se gano un avion y Bs 0.000001', function ($m) use ($docente) {
            $m->from('hello@app.com', 'Your Application');
            $m->to($docente->emailDoc, $docente->nombreDoc); //'kennydaltonc@yahoo.com'
        });

        // Mail::send('emails.notificacion', ['message' => 'te ganaste un coche ultimo modelo'], function($msj){
        //     $msj->subject('Correo de prueba, no te asustes');
        //     $msj->to('dandiel2307@gmail.com');
        // } );
        return "si se envio el correo";
        // return view('emails.notificacion');
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
        Mail::send('emails.notificacion', ['message' => 'te ganaste un coche ultimo modelo'], function($msj){
            $msj->subject('Correo de prueba, no te asustes');
            $msj->to('dandiel2307@gmail.com');
        } );
        Session::flash('message', 'Mensaje enviado correctamente');
        return Redirect::to('/email');
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
