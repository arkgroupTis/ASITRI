@extends('layouts.app')
@section('content')
<div class="row">
<<<<<<< HEAD
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
=======
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
>>>>>>> c72130a35d62dec474a3098475d6a58853233fa0
</div>

@endsection
