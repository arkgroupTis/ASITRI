@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<h1 class="text-center">Catalogo Areas \ Sub Areas</h1>
	<h3 class="text-left">Areas:</h3>
	<div class="form-row">
		<div class="col-md-3">
        <select class="mdb-select colorful-select dropdown-primary">
        	<option>Seleccione una Categoria</option>
            <option value="1">Areas</option>
            <option value="2">Sub Areaa</option>
        </select>
    	</div>
    	<div class="col-md-6" align="center">
    		<input class="form-control" id="Search1" type="text" placeholder="Buscar..">	
    	</div>
			<div class="col-md-3" align="right">
    		<a href="/area" class="btn btn-default">Nueva Area</a> <!-- Como se hace esto? -->
    	</div>    	
    </div>
	<div class="tablaScroll3">
		<table class="table table-striped tablaScroll3">
		  <thead>
		    <tr>
		      <th style="width: 15%"><font size="3">Codigo Area</font></th>
		      <th style="width: 55%"><font size="3">Descripcion</font></th>
		      <th style="width: 30%"><font size="3">Area</font></th>
		    </tr>
		  </thead>
		  <tbody id="table1">
		    @foreach($areas as $area)
			  		<tr>
			  			<td style="width: 15%">{{$area -> idArea}}</td>
				    	<td style="width: 55%">{{$area -> descripcionArea}}</td>
				    	<td style="width: 30%">{{$area -> nombreArea}}</td>

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