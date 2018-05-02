@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<div class='container'>
	<h1 class="text-center">Asignacion de Tribunales</h1>
	<div class="container">
		<div class="form-group row">
	        <label for="buscador" class="col-sm-2 col-form-label col-form-label-lg">Tribunales :</label>
	        <select class="mdb-select btn-sm colorful-select dropdown-primary col-md-3">
	        	<option>Seleccione una Categoria</option>
	            <option value="1">Nombre Tribunal</option>
	            <option value="2">Proyectos</option>
	        </select>
	        <select class="custom-select">
			  <option selected>Open this select menu</option>
			  <option value="1">One</option>
			  <option value="2">Two</option>
			  <option value="3">Three</option>
			</select>
	    	<div class="col-sm-7">
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
		      <td>
		      	Mark
		      	<a class="btn-floating btn-sm btn-indigo float-right" data-toggle="tooltip" data-placement="top" title="Asignar">
		      		<i class="fas fa-plus-circle mt-1 ml-1 fa-2x"></i></i>
		      	</a>
		      </td>
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
		<div class="form-group row">
			<label for="buscador" class="col-sm-5 col-form-label col-form-label-lg">Tribunales Asignados:</label>
		</div>
		<table class="table table-bordered table-striped">
		  <thead>
		    <tr>
		      <th><font size="3">Nombre Tribunal</font></th>
		      <th width=""><font size="3">Numero Proyectos</font></th>
		    </tr>
		  </thead>
		  <tbody id="listaTribunales">
		    <tr>
		      <td>
		      	Mark
		      	<a class="btn-floating btn-sm btn-danger float-right" data-toggle="tooltip" data-placement="top" title="Eliminar"><i class="fa fa-trash mt-2 ml-2 fa-lg"></i></a>
		      </td>
		      <td>5</td>
		    </tr>
		    <tr>
		      <td>
		      	Jacob
		      	<button type="button" class="btn btn-danger float-right btn-sm">X</button>
		      </td>
		      <td>3</td>
		    </tr>
		    <tr>
		      <td>
		      	Larry the Bird
		      	<button type="button" class="btn btn-danger float-right btn-sm">X</button>
		      </td>
		      <td>4</td>
		    </tr>
		  </tbody>
		</table>
		<div class="text-center">
	        <button type="button" class="btn btn-danger">Cancelar</button>
	        <button type="button" class="btn btn-success">Guardar</button>
    	</div>
		
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