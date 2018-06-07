@extends('layouts.app')
@section('content')
    
<h1 align="center">Detalles del Proyecto</h1>

<div class="row">

   <div class="col-md-4">
        @foreach($proy_est as $proyecto)
            <p><b>Codigo Proyecto:</b>
            {{ $proyecto->idProyecto }}
            </p> 
            <p><b>Nombre Proyecto:</b>{{ $proyecto->titulo }}</ps>
        @endforeach
        <p class="lead"><b>Areas Proyecto:</b></p>
        @foreach($areas as $area)
        {{$area -> nombreArea}} <br>
        @endforeach
        <p class="lead"><b>Sub Areas Proyecto:</b></p>
       @foreach($subareas as $subarea)
        {{$subarea -> nombreArea}} <br>
        @endforeach
    </div>
    <div class="col-md-4">
        @foreach($proy_est as $proyecto)
            <p><b>Descripcion:</b>
            {{ $proyecto->descripcion }}
            </p> 
            <p><b>Objetivos:</b>
            {{ $proyecto->objetivos }}
            </p> 
            <p><b>Fecha Registro:</b>
            {{ $proyecto->fechaRegistroProy }}
            </p> 
            </p> 
            <p><b>Fecha Fin:</b>
            {{ $proyecto->fechafin }}
            </p> 

        @endforeach
    </div>
    <div class="col-md-4">
        @foreach($proy_est as $proyecto)
            <p><b>Periodo:</b>
            {{ $proyecto->periodo }}
            </p> 
            <p><b>Sesion de Consejo:</b>
            {{ $proyecto->sesionDeConsejo }}
            </p> 
            <p><b>Modalidad:</b>
            {{ $proyecto->modalidad->nombreMod }}
            </p>
            <p style="txt"><b>Estado:</b>
            {{ $proyecto->estado }}
            </p>  
        @endforeach
    </div>
</div>
<br>
<h3>Tutores y Tribunales</h3>
<div class="row">
    <div class="col-md-4">
        <h4>Estudiante(s)</h4>
        @foreach($estudiantes as $estudiante)
            {{$estudiante->nombreEst." ".$estudiante->apellidoEst}}<br>
        @endforeach        
    </div>
    <div class="col-md-4">
        <h4>Tutore(s)</h4>
        @foreach($tutores as $estudiante)
            {{$estudiante->nombreDoc." ".$estudiante->apePaternoDoc." ".$estudiante->apeMaternoDoc}}<br>
        @endforeach        
    </div>
    <div class="col-md-4">
        <h4>Tribunale(s)</h4>
        @foreach($tribunales as $estudiante)
            {{$estudiante->nombreDoc." ".$estudiante->apePaternoDoc." ".$estudiante->apeMaternoDoc}}<br>
        @endforeach        
    </div>
</div>


@endsection
