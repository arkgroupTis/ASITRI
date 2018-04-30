@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<div class='container'>
	<h1 class="text-center">Tribunales</h1>
	<div class="container">
	    <div class="form-group row">
			<label for="buscador" class="col-sm-2 col-form-label col-form-label-lg">Buscar :</label>
			<div class="col-sm-10">
				<input class="form-control form-control-lg" id="buscador" type="text" placeholder="Tribunal..">	
			</div>
		</div>
		
		<table class="table table-bordered table-striped">
		  <thead>
		    <tr>
		      <th><font size="3">Nombre Tribunal</font></th>
		      <th width=""><font size="3">Proyectos</font></th>
		    </tr>
		  </thead>
		  <tbody id="table1">
		    <tr>
		      <td>Mark</td>
		      <td>5</td>
		    </tr>
		    <tr>
		      <td>Jacob</td>
		      <td>3</td>
		    </tr>
		    <tr>
		      <td>Larry the Bird</td>
		      <td>4</td>
		    </tr>
		    <tr>
		      <td>Marco Valencia</td>
		      <td>3</td>
		    </tr>
		    <tr>
		      <td>Armando Paredes</td>
		      <td>2</td>
		    </tr>
		    <tr>
		      <td>Camila Sanchez</td>
		      <td>6</td>
		    </tr>
		    <tr>
		      <td>Pedro Martinez</td>
		      <td>4</td>
		    </tr>
		    <tr>
		      <td>Solomeo Quintana</td>
		      <td>3</td>
		    </tr>
		  </tbody>
		</table>
	</div>
</div>
	<script>
		$(document).ready(function(){
		  $("#buscador").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#table1 tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
	</script>
@endsection
