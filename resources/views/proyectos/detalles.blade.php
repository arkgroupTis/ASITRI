@extends('layouts.app')
@section('content')
    
<h1 align="center">Detalles del Proyecto</h1>

<div class="row">

    <div class="jumbotron">
    <p class="lead"><b>Codigo Proyecto:</b>
    @foreach($proy_est as $proyecto)
    {{ $proyecto->idProyecto }}
    @endforeach
    </p> 
    <p class="lead"><b>Nombre Proyecto:</b></ps>
    <p class="lead"><b>Areas Proyecto:</b></p>
    <p class="lead"><b>Sub Areas Proyecto:</b></p>
    
   
    </div>
    
</div>

 
    
      
   

@endsection
