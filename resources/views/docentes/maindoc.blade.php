@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<div class='container'>
	<h1>Docentes & Profesionales</h1>
	<div class="container">
	<div class="row">
		<div class="col-md-4">
        <!--Blue select-->
        <select class="mdb-select colorful-select dropdown-primary">
        	<option>Seleccione una Categoria</option>
            <option value="1">Tipo</option>
            <option value="2">Cantidad de Proyectos</option>
            <option value="3">Codigo</option>
        </select>
        <!--/Blue select-->
    	</div>
    	<div class="col-md-8">
    		<input class="form-control" id="Search1" type="text" placeholder="Search..">	
    	</div>    	
    </div>
	
		<table class="table table-bordered table-striped">
		  <thead>
		    <tr>
		      <th width="15"><font size="3">Codigo Docente</font></th>
		      <th><font size="3">Nombre Docente</font></th>
		      <th width="25"><font size="3">Tipo</font></th>
		      <th width="5"><font size="3">N</font></th>
		      <th width="15"><font size="3">Proyectos</font></th>
		    </tr>
		  </thead>
		  <tbody id="table1">
		    <tr>
		      <th>1</th>
		      <td>Mark</td>
		      <td>Docente</td>
		      <td>5</td>
		      <td><a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a></td>
		    </tr>
		    <tr>
		      <th >2</th>
		      <td>Jacob</td>
		      <td>Docente</td>
		      <td>3</td>
		      <td><a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a></td>
		    </tr>
		    <tr>
		      <th>3</th>
		      <td>Larry the Bird</td>
		      <td>Profesional</td>
		      <td>4</td>
		      <td><a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a></td>
		    </tr>
		    <tr>
		      <th>4</th>
		      <td>Marco Valencia</td>
		      <td>Profesional</td>
		      <td>3</td>
		      <td><a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a></td>
		    </tr>
		    <tr>
		      <th>5</th>
		      <td>Armando Paredes</td>
		      <td>Docente</td>
		      <td>2</td>
		      <td><a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a></td>
		    </tr>
		    <tr>
		      <th>6</th>
		      <td>Camila Sanchez</td>
		      <td>Docente</td>
		      <td>6</td>
		      <td><a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a></td>
		    </tr>
		    <tr>
		      <th>7</th>
		      <td>Pedro Martinez</td>
		      <td>Profesional</td>
		      <td>4</td>
		      <td><a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a></td>
		    </tr>
		    <tr>
		      <th>8</th>
		      <td>Solomeo Quintana</td>
		      <td>Profesional</td>
		      <td>3</td>
		      <td><a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a></td>
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