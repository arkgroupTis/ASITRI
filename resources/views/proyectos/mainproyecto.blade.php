@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<div class='container'>
	<h1 align="center">PROYECTOS</h1>
	<div class="container">
	<div class="form-row">
		<div class="col-md-3">
        <!--Blue select-->
        <select class="mdb-select colorful-select dropdown-primary">
        	<option>Seleccione una Categoria</option>
            <option value="1">Tipo</option>
            <option value="2">Cantidad de Proyectos</option>
            <option value="3">Codigo</option>
        </select>
        <!--/Blue select-->
    	</div>
    	<div class="col-md-6" align="center">
    		<input class="form-control" id="Search1" type="text" placeholder="Search..">	
    	</div>
    	<div class="col-md-3" align="right">
    		<a href="/create" class="btn btn-default">NUEVO PROYECTO</a>
    	</div>    	
    </div>
	
		<table class="table table-bordered table-striped">
		  <thead>
		    <tr>
		      <th style="width:10%;"><font size="3">Codigo Proyecto</font></th>
		      <th style="width:45%;"><font size="3">Nombre Proyecto</font></th>
		      <th style="width:30%;"><font size="3">Area Proyecto</font></th>
		      <th style="width:15%;"><font size="3">Detalles</font></th>
		    </tr>
		  </thead>
		  <tbody id="table1">
		    <tr>
		      <th>1</th>
		      <td>Mark</td>
		      <td>area 1</td>
		      <td><a href="#" class="btn aqua-gradient btn-sm">MAS INFO</a></td>
		      
		    </tr>
		    <tr>
		      <th >2</th>
		      <td>Jacob</td>
		      <td>area 2</td>
		      <td><a href="#" class="btn aqua-gradient btn-sm">MAS INFO</a></td>
		      
		    </tr>
		    <tr>
		      <th>3</th>
		      <td>Larry the Bird</td>
		      <td>area 3</td>
		      <td><a href="#" class="btn aqua-gradient btn-sm">MAS INFO</a></td>
		     
		    </tr>
		    <tr>
		      <th>4</th>
		      <td>Marco Valencia</td>
		      <td>area 4</td>
		      <td><a href="#" class="btn aqua-gradient btn-sm">MAS INFO</a></td>
		      
		    </tr>
		    <tr>
		      <th>5</th>
		      <td>Armando Paredes</td>
		      <td>area 5</td>
		      <td><a href="#" class="btn aqua-gradient btn-sm">MAS INFO</a></td>
		      
		    </tr>
		    <tr>
		      <th>6</th>
		      <td>Camila Sanchez</td>
		      <td>area 6</td>
		      <td><a href="#" class="btn aqua-gradient btn-sm">MAS INFO</a></td>
		      
		    </tr>
		    <tr>
		      <th>7</th>
		      <td>Pedro Martinez</td>
		      <td>area 7</td>
		      <td><a href="#" class="btn aqua-gradient btn-sm">MAS INFO</a></td>
		      
		    </tr>
		    <tr>
		      <th>8</th>
		      <td>Solomeo Quintana</td>
		      <td>area 8</td>
		      <td><a href="#" class="btn aqua-gradient btn-sm">MAS INFO</a></td>
		      	    
		  	</tr>
		  </tbody>
		</table>
	</div>
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

</body>
</html>