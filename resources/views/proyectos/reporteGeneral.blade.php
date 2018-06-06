@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <h1 align="center">REPORTE PROYECTOS</h1>
<div class="container">
	<div class="form-row">
		
		<div class="col-md-6">
	    		
                <label class="sr-only" ></label>
                <div class="md-form input-group mb-3">
                <input type="text" class="form-control pl-0 rounded-0" id="Search1" type="text" placeholder="Buscar Proyectos...">
                </div>
	    </div>    	
        
	<div >
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th style="width: 15%"><font size="3">Codigo Proyecto</font></th>
		      <th style="width: 85% text-center" class="text-center"><font size="3">Descripcion de los Proyectos</font></th>
 	   </tr>
 	 </thead>
    
 	 <tbody id="table1">

 	   @foreach($proyectos as $proyecto)
 	   <tr data-id="{{ $proyecto->idProyecto }}">
              <td style="width: 15%" class="text-center"> {{ $proyecto->idProyecto }} </td>
              <td style="width: 85%"> 
                  <label ><strong>Titulo: </strong></label>  {{ $proyecto->titulo }} <br>
                  <label ><strong>Objetivos: </strong></label>  {{ $proyecto->objetivos }} <br>
                  <label ><strong>Descripción: </strong></label>  {{ $proyecto->descripcion }} <br>
                  <label ><strong>Estado del Proyecto: </strong></label>  {{ $proyecto->estado }} <br>
                  <label ><strong>Apellido Estudiante: </strong></label>  {{ $proyecto->apellidoEst }} <br>
                  <label ><strong>Nombre Estudiante: </strong></label>  {{ $proyecto->nombreEst }} <br>
                  <label ><strong>C.I. Estudiante: </strong></label>  {{ $proyecto->ciEst }} <br>
                  <label ><strong>Email Estudiante: </strong></label>  {{ $proyecto->emailEst }} <br>
                  <label ><strong>Telefono Estudiante: </strong></label>  {{ $proyecto->telefono }} <br>
                  <label ><strong>Carrera Estudiante: </strong></label>  {{ $proyecto->nombreCarrera }} <br>
              </td>
        	</tr>
		  	@endforeach
		    
		  </tbody>
		</table>
    </div>
</div>
@endsection
@section('script')
              
  <script>
    $(document).ready(function(){
 	 $("#Search1").on("keyup", function() {
 	   var value = $(this).val().toLowerCase();
 	   $("#table1 tr").filter(function() {
 	     $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
 	   });
 	 });
    });

  </script>
  

@endsection