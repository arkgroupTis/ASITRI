@extends('layouts.app')
@section('content')
<div class="row">
    @if($proy_est)
    <div class="col-sm-8">
        <div class="jumbotron">
            <h1 class="h1-responsive">Estudiante</h1>

            <p class="lead"><b>Nombre:</b> {{ $proy_est->estudiante->nombreEst }}</p>
            <p class="lead"><b>Apellido:</b> {{ $proy_est->estudiante->apellidoEst }}</p>
            <p class="lead"><b
                >CI:</b> {{ $proy_est->estudiante->ciEst }}</p>
            <hr class="my-2">
            <h1 class="h1-responsive">Proyecto</h1>
        
            <p class="lead"><b>Titulo:</b> {{ $proy_est->proyecto->titulo }}</p>
            <p class="lead"><b>Tutor 1:</b> {{ $tutor1->docente->apePaternoDoc }} {{ $tutor1->docente->apeMaternoDoc }} {{ $tutor1->docente->nombreDoc }} <br>
              <b>Tutor 2:</b> 
              @if(empty($tutor2))
                No existe
              @endif
              @if(!empty($tutor2))
                {{ $tutor2->docente->apePaternoDoc }} {{ $tutor2->docente->apeMaternoDoc }} {{ $tutor2->docente->nombreDoc }}  
              @endif
              
            </p>
            <p class="lead">
                <b>Tribunal 1:</b>
                @if(empty($tribunal1))
                    No existe
                @endif
                @if(!empty($tribunal1))
                    {{ $tribunal1->docente->apePaternoDoc }} {{ $tribunal1->docente->apeMaternoDoc }} {{ $tribunal1->docente->nombreDoc }}  
                @endif
                <br>
                <b>Tribunal 2:</b>
                @if(empty($tribunal2))
                    No existe
                @endif
                @if(!empty($tribunal2))
                    {{ $tribunal2->docente->apePaternoDoc }} {{ $tribunal2->docente->apeMaternoDoc }} {{ $tribunal2->docente->nombreDoc }}  
                @endif
                <br>
                <b>Tribunal 3:</b>
                @if(empty($tribunal3))
                    No existe
                @endif
                @if(!empty($tribunal3))
                    {{ $tribunal3->docente->apePaternoDoc }} {{ $tribunal3->docente->apeMaternoDoc }} {{ $tribunal3->docente->nombreDoc }}  
                @endif
                <br>
            </p>
            <p class="lead"><b>Objetivos:</b>{{ $proy_est->proyecto->objetivos }}</p>
            <p class="lead"><b>Descripcion:</b> {{ $proy_est->proyecto->descripcion }}</p>
            <p class="lead"><b>Area:</b> 
            @foreach($proy_est->proyecto->proyecto_has_area as $pha)
                {{ $pha->area->nombreArea }}, 
            @endforeach
            </p>
        </div>
    </div>
    @else
        <blockquote class="blockquote bq-danger">
            <p class="bq-title">No tiene proyecto asignado</p>
            <p>Es necesario asignar un proyecto al estudiante, para poder ver las opciones que se pueden aplicar a un proyecto!</p>
            <a href="/proyecto_est" class="btn btn-red btn-lg btn-block" role="button">Asignar Proyecto</a>
        </blockquote>
    @endif
    

    <div class="col-sm-4" {{$proy_est?'':'hidden'}}>
        <div class="jumbotron">
            <a href="/estudiante/proyecto/{{$proy_est?$proy_est->idProyecto:1}}/tribunales" class="btn cyan btn-lg btn-block btn-rounded" role="button">Asignar Tribunales</a>
            <a href="/estudiante/proyecto/{{$proy_est?$proy_est->idProyecto:1}}/renuncia" class="btn cyan btn-lg btn-block btn-rounded" role="button">Renuncia de Tribunal</a>
            <a href="#" class="btn cyan btn-lg btn-block btn-rounded" role="button">Seguimiento</a>
            <a href="#" class="btn cyan btn-lg btn-block btn-rounded" role="button">Defensa</a>
        </div>
    </div>
</div>

@endsection
