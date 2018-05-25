@extends('layouts.app')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
    		<a href="/estudianteproyecto" class="btn btn-default">NUEVO PROYECTO</a>
    	</div>    	
    </div>
	<div class="tablaScroll4">
		<table class="table table-striped tablaScroll4">
		  <thead>
		    <tr>
		      <th style="width: 15%"><font size="3">Codigo Proyecto</font></th>
		      <th style="width: 40%"><font size="3">Nombre Proyecto</font></th>
		      <th style="width: 35%"><font size="3">Area Proyecto</font></th>
		      <th style="width: 10%"><font size="3">Detalles</font></th>

		    </tr>
		  </thead>
		  <tbody id="table1">

		  	@foreach($proyectos as $proyecto)
		  	<tr data-id="{{ $proyecto->idProyecto }}">
	            <td style="width: 15%" class="text-center"> {{ $proyecto->idProyecto }} </td>
	            <td style="width: 40%"> {{ $proyecto->titulo }} </td>
	            <td style="width: 35%"> 
                @foreach($proyecto->proyecto_has_area as $pha)
                    {{ $pha->area->nombreArea }}, 
                @endforeach 
                </td>
	            <td style="width: 10%"><a class="btn-floating btn-sm btn-indigo btn-modal-show" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a></td>
	            
        	</tr>
		  	@endforeach
		    
		  </tbody>
		</table>
    </div>
</div>

<div class="modal fade" id="modal-show" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-notify modal-info modal-lg" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <p class="heading lead">Proyecto</p>
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
            
            <!--Body-->
            <div class="modal-body">
                <!-- Grid row -->
                <div class="form-row">
                    <!-- Grid column -->
                    <div class="col-md-12">
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th scope="row">Id Proyecto</th>
                                    <td id="td-idProy"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Titulo</th>
                                    <td id="td-titulo"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Objetivos</th>
                                    <td id="td-objetivos"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Descripcion</th>
                                    <td id="td-descripcion"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Fecha Inicio</th>
                                    <td id="td-fechaIni"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Fecha Fin</th>
                                    <td id="td-fechaFin"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Periodo</th>
                                    <td id="td-periodo"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Sesion de consejo</th>
                                    <td id="td-sesion"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Modalidad</th>
                                    <td id="td-modalidad"></td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->              
            </div>
            <!--Footer-->
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
        <!--/.Content-->
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

		$(document).on('click', '.btn-modal-show', function() {
        $.get('/proyectos/'+$($(this).parents("tr")).data('id'), function(data){
            $('#td-idProy').text(data.proyecto.idProyecto);
            $('#td-titulo').text(data.proyecto.titulo);
            $('#td-objetivos').text(data.proyecto.objetivos);
            $('#td-descripcion').text(data.proyecto.descripcion);
            $('#td-fechaIni').text(data.proyecto.fechaIni);
            $('#td-fechaFin').text(data.proyecto.fechaFin);
            $('#td-periodo').text(data.proyecto.periodo);
            $('#td-sesion').text(data.proyecto.sesionDeConsejo);
            $('#td-modalidad').text(data.proyecto.idModalidad);
        });
        $('#modal-show').modal('show');
    	});

	</script>
	

@endsection

</body>
</html>