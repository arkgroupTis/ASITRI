@extends('layouts.app')
@section('content')
<div class='container'>
	<h1 class="text-center">Tribunales</h1>
	<div class="container">
	    <div class="form-group row">
			<label for="buscador" class="col-sm-2 col-form-label col-form-label-lg">Buscar :</label>
			<div class="col-sm-10">
				<input class="form-control form-control-lg" id="buscador" type="text" placeholder="Tribunal..">	
			</div>
		</div>
		<div class="tablaScroll2">
			<table id="tabla" class="table table-bordered table-striped tablaScroll2">
			  <thead style="">
			    <tr>
			      <th><font size="3">Nombre Tribunal</font></th>
			      <th><font size="3">Proyectos</font></th>
			    </tr>
			  </thead>
			  <tbody id="datosTabla" >
			  	@foreach($docentes as $docente)
			  		<tr>
			  			<td >{{$docente -> apePaternoDoc}} {{$docente -> apeMaternoDoc}} {{$docente -> nombreDoc}}</td>
				    	<td align="center">{{$docente -> telefonoDoc}}</td>
				    </tr>
			    @endforeach
			  </tbody>
			</table>
		</div>
		
	</div>

</div>
	<script>
		$(document).ready(function(){
		  $("#buscador").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#datosTabla tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});

		$(document).ready(function() {
	    $('#datosTabla').DataTable( {
	        "scrollX": true
	    });
		});
	</script>
@endsection
