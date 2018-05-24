@extends('layouts.app')
@section('content')
{{ csrf_field() }}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <div class="row">
        <div class="col-md-8"><h1>Docentes & Profesionales</h1></div>
        <div class="col-md-2"></div>
        <div class="col-md-2"><button class="btn btn-indigo"><a href="/newdoc"><font color="white" size="2">Nuevo Docente</font></a></button></div>
	</div>
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
	<div class="tablaScroll4">
		<table class="table table-striped tablaScroll4">
		  <thead>
		    <tr>
		      <th style="width: 15%" class="text-center"><font size="3">Codigo Docente</font></th>
		      <th style="width: 40%" class="text-center"><font size="3">Nombre Docente</font></th>
		      <th style="width: 10%" class="text-center"><font size="3">Tipo</font></th>
		      <th style="width: 5%" class="text-center"><font size="3">N</font></th>
		      <th style="width: 30%" class="text-center"><font size="3">Detalles</font></th>

		    </tr>
		  </thead>
		  <tbody id="table1">
		    @foreach($docentes as $docente)
        	<tr data-id="{{ $docente->idDoc }}">
	            <td style="width: 15%" class="text-center"> {{ $docente->ciDoc }} </td>
	            <td style="width: 40%" class="text-center"> {{ $docente->apePaternoDoc }} {{ $docente->apeMaternoDoc }} {{ $docente->nombreDoc }} </td>
	            <td style="width: 10%" class="text-center"> {{ $docente->tituloDoc }} </td>

	            <td style="width: 5%" class="text-center">3</td>

	            <td style="width: 30%" class="text-center">
	            	<a class="btn-floating btn-sm btn-indigo btn-modal-show" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-1 fa-lg"></i></a>
	            </td>
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
                <p class="heading lead">Docente</p>
                
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
                                    <th scope="row">CI</th>
                                    <td id="td-ci"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Apellidos</th>
                                    <td id="td-apellido"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Nombres</th>
                                    <td id="td-nombre"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Email</th>
                                    <td id="td-email"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Telefono</th>
                                    <td id="td-telefono"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Proyecto</th>
                                    <td id="td-proyecto"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Carga Horaria</th>
                                    <td id="td-cargahoraria"></td>
                                </tr>
                                <tr>
                                    <th scope="row">Titulo Docente</th>
                                    <td id="td-titulo"></td>
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
		{{ $docentes->links() }}
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
        $.get('/docentes/'+$($(this).parents("tr")).data('id'), function(data){
            $('#td-ci').text(data.docente.ciDoc);
            $('#td-apellido').text(data.docente.apePaternoDoc+" "+data.docente.apeMaternoDoc);
            $('#td-nombre').text(data.docente.nombreDoc);
            $('#td-email').text(data.docente.emailDoc);
            $('#td-telefono').text(data.docente.telefonoDoc);
            $('#td-proyecto').text(data.docente.proyecto);
            $('#td-cargahoraria').text(data.docente.cargaHoraria);
            $('#td-titulo').text(data.docente.tituloDoc);
        });
        $('#modal-show').modal('show');
    	});
	</script>
@endsection