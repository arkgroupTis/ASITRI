@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <h1 align="center">PROYECTOS</h1>
<div class="container">
	<div class="form-row">
		
		<div class="col-md-6">
	    		
                <label class="sr-only" ></label>
                <div class="md-form input-group mb-3">
                <input type="text" class="form-control pl-0 rounded-0" id="Search1" type="text" placeholder="Buscar Proyectos...">
                </div>
	    </div>    	
        <div class="col-md-3" ></div>

    	
    	<div class="col-md-3" align="right">
            <!-- <button class="btn btn-indigo">
    		    <a href="/create"><font color="white" size="2">NUEVO PROYECTO</font></a>
            </button> -->
			<button class="btn btn-cyan btn-rounded">
                <a href="/create"><font color="white" size="3">NUEVO PROYECTO</font></a>
			</button>
    	</div>
    </div>
	<div class="tablaScroll4">
		<table class="table table-striped tablaScroll4">
		  <thead>
		    <tr>
		      <th style="width: 10%"  class="text-center"><font size="3">Codigo</font></th>
		      <th style="width: 35%"><font size="3">Nombre Proyecto</font></th>
		      <th style="width: 35%"><font size="3">Area Proyecto</font></th>
              <th style="width: 10%"><font size="3">Estado</font></th>
		      <th style="width: 10%"><font size="3"  class="text-center">Acciones</font></th>
 	   </tr>
 	 </thead>
    
 	 <tbody id="table1">

 	   @foreach($proyectos as $proyecto)
 	   <tr data-id="{{ $proyecto->idProyecto }}">
              <td style="width: 10%" class="text-center"> {{ $proyecto->idProyecto }} </td>
              <td style="width: 35%"> {{ $proyecto->titulo }} </td>
              <td style="width: 35%">
               @foreach($proyecto->proyecto_has_area as $pha)
                   {{ $pha->area->nombreArea }},
               @endforeach
               </td>
               <td style="width: 10%;text-transform: capitalize;">
               @foreach($proyecto->proyecto_estudiante as $pha)
                   {{ $pha->estado }}
               @endforeach
                </td>
  	            <td style="width: 10%"  class="text-center">
        				<a class="btn-floating btn-sm btn-mdb-color"  href="/proyecto/detalle/{{ $proyecto->idProyecto }}" data-toggle="tooltip" data-placement="top" title="ver">
        				<i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a>
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