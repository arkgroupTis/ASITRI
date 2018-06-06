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
    <h3>Tutores y Tribunales</h3>
</div>

<div class="row">
    @if($estudiantes)
    <div class="col-md-4">
            
        <p><b>Estudiante 1:</b>
        {{ $estudiantes[0]->proyecto_estudiante[0]->estudiante->nombreEst." ".$estudiantes[0]->proyecto_estudiante[0]->estudiante->apellidoEst }}
        </p>
        {{dd($estudiantes[1])}}
        @if($estudiantes[1])
        <p><b>Estudiante 2:</b>
        {{ $estudiantes[1]->proyecto_estudiante[1]->estudiante->nombreEst." ".$estudiantes[1]->proyecto_estudiante[1]->estudiante->apellidoEst }}
        </p>
        @endif
    </div>
    @endif
    @if($tutores)
    <div class="col-md-4">
        <p><b>Tutor 1:</b>
        {{ $tutores[0]->Docente->nombreDoc ." ". $tutores[0]->Docente->apePaternoDoc ." ".$tutores[0]->Docente->apeMaternoDoc}}
        </p>
        @if($tutores[1])
        <p><b>Tutor 2:</b>
        {{ $tutores[1]->Docente->nombreDoc ." ". $tutores[1]->Docente->apePaternoDoc ." ".$tutores[1]->Docente->apeMaternoDoc }}
        </p>
        @endif
    </div>
    @endif
    @if($tribunales)
    <div class="col-md-4">
        <p><b>Tribunal 1:</b>
        {{ $tribunales[0]->Docente->nombreDoc ." ". $tribunales[0]->Docente->apePaternoDoc ." ".$tribunales[0]->Docente->apeMaternoDoc }}
        </p>
        @if($tribunales[1])
        <p><b>Tribunal 2:</b>
        {{ $tribunales[1]->Docente->nombreDoc ." ". $tribunales[1]->Docente->apePaternoDoc ." ".$tribunales[1]->Docente->apeMaternoDoc }}
        </p>
        @endif
        @if($tribunales[2])
        <p><b>Tribunal 3:</b>
        {{ $tribunales[2]->Docente->nombreDoc ." ". $tribunales[2]->Docente->apePaternoDoc ." ".$tribunales[0]->Docente->apeMaternoDoc }}
        </p>
        @endif
    </div>
    @endif
</div>

    
      
   

@endsection
