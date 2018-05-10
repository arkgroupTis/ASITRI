@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<h1 class="text-center">Catalogo Areas</h1>
	<h3 class="text-left">Areas:</h3>
	<div class="form-row">
		<div class="col-md-4">
        <select class="mdb-select colorful-select dropdown-primary">
        	<option>Seleccione una Categoria</option>
            <option value="1">Area1</option>
            <option value="2">Area2</option>
            <option value="3">Area3</option>
        </select>
    	</div>
    	<div class="col-md-8">
    		<input class="form-control" id="Search1" type="text" placeholder="Buscar..">	
    	</div>    	
    </div>
	<div class="tablaScroll3">
		<table class="table table-striped tablaScroll3">
		  <thead>
		    <tr>
		      <th><font size="3">Area</font></th>
		      <th width=""><font size="3">Descripcion</font></th>
		      <th><font size="3">Codigo Area</font></th>
		      <th><font size="3">Codigo Sub-Area</font></th>
		    </tr>
		  </thead>
		  <tbody id="table1">
		    @foreach($areas as $area)
			  		<tr>
			  			<td >{{$area -> nombreArea}}</td>
				    	<td >{{$area -> descripcionArea}}</td>
				    	<td>{{$area -> idArea}}</td>
				    	<td>{{$area -> cod_subarea}}</td>
				    </tr>
		    @endforeach
		  </tbody>
		</table>
	</div>
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