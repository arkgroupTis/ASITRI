@extends('layouts.app')
@section('content')
    
<h1 align="center">Detalles del Proyecto</h1>

<div class="container">
    <div class="form-group row">
			<label for="buscador" class="col-sm-3 col-form-label col-form-label-lg">Codigo Proyecto :</label>
            
            <tr>
			  			<td >
                          @foreach($proyectos as $proyecto)
                          {{ $proyecto->idProyecto }}
                          @endforeach
                          </td>
			</tr>
    </div> 
    <div class="form-group row">
			<label for="buscador" class="col-sm-3 col-form-label col-form-label-lg">Nombre Proyecto :</label>
    </div>
    <div class="form-group row">
			<label for="buscador" class="col-sm-3 col-form-label col-form-label-lg">Areas Proyecto :</label>
    </div>
    <div class="form-group row">
			<label for="buscador" class="col-sm-3 col-form-label col-form-label-lg">Sub Areas Proyecto :</label>
    </div>
    <div class="form-group row">
			<label for="buscador" class="col-sm-3 col-form-label col-form-label-lg">Estudiantes :</label>
    </div>
    <div class="form-group row">
			<label for="buscador" class="col-sm-3 col-form-label col-form-label-lg">Tutor :</label>
    </div>
    <div class="form-group row">
			<label for="buscador" class="col-sm-3 col-form-label col-form-label-lg">Tribunales Asignados :</label>
    </div>
    <div class="form-group row">
			<label for="buscador" class="col-sm-3 col-form-label col-form-label-lg">Estado Proyecto :</label>
    </div>
   
</div>

 
    
      
   

@endsection
