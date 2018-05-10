@extends('layouts.app')

@section('content')
{{ csrf_field() }}
<h1 class="text-center">ESTUDIANTES</h1>
<button type="button" class="btn btn-indigo" id="btn-modal-add" data-toggle="modal" data-target="#modal-estudiante">
    Nuevo Estudiante
</button>
<!-- es para mostrar mensaje para cuando hay errores -->
@if($errors->has())
    <script>
        setTimeout(function(){
            toastr.error('ups!, algo salio mal.');
        }, 300);
    </script>
@endif
<hr>
<div class="tablaScroll5">
<table class="table table-striped table-sm tablaScroll5">
    <thead>
        <tr>
            <th>CI</th>
          	<th>Apellidos</th>
          	<th>Nombre</th>
          	<th>Email</th>
          	<th>Telefono</th>
          	<th>Nombre Proyecto</th>
          	<th>Carrera</th>
          	<th>acciones</th>
        </tr>
    </thead>
    <tbody>
    	@foreach($estudiantes as $estudiante)
        <tr data-id="{{ $estudiante->idEstudiante }}">
            <td>{{ $estudiante->ciEst }}</td>
            <td>{{ $estudiante->apellidoEst }}</td>
            <td>{{ $estudiante->nombreEst }}</td>
            <td>{{ $estudiante->emailEst }}</td>
            <td>{{ $estudiante->telefono }}</td>
            <td>{{ $estudiante->idProyecto }}</td>
            <td>{{ $estudiante->carrera->nombreCarrera}}</td>
           
            <td>
            	<a class="btn-floating btn-sm btn-indigo btn-modal-show" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a>
            	<a class="btn-floating btn-sm btn-info btn-modal-edit" data-toggle="tooltip" data-placement="top" title="editar"><i class="fa fa-edit mt-2 ml-2 fa-lg"></i></a>
				<a class="btn-floating btn-sm btn-danger btn-modal-delete" data-toggle="tooltip" data-placement="top" title="eliminar"><i class="fa fa-trash mt-2 ml-2 fa-lg"></i></a>
            </td>
        </tr>
		@endforeach
    </tbody>
</table>
</div>
{{ $estudiantes->links() }}
  
<!-- Modal agregar y modificar estudiante -->
<div class="modal fade" id="modal-estudiante" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-notify modal-info modal-lg" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <p class="heading lead">Nuevo Estudiante</p>
                
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
                        <!-- Material input -->
                        <div class="md-form form-group">
                            <input type="text" class="form-control validate" id="nombre" placeholder="Nombre">
                            <label for="nombre">Nombre:</label>
                        </div>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-12">
                        <!-- Material input -->
                        <div class="md-form form-group">
                            <input type="text" class="form-control validate" id="apellidos" placeholder="Apellidos">
                            <label for="apellidos">Apellidos:</label>
                        </div>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->

                <!-- Grid row -->
                <div class="row">
                    <!-- Grid column -->
                    <div class="col-md-6">
                        <!-- Material input -->
                        <div class="md-form form-group">
                            <input type="text" class="form-control validate" id="ci" placeholder="CI">
                            <label for="ci">CI:</label>
                        </div>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-6">
                        <!-- Material input -->
                        <div class="md-form form-group">
                             <input type="number" class="form-control validate" id="telefono" placeholder="Telefono">
                             <label for="telefono">Telefono:</label>
                        </div>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->

                <!-- Grid row -->
                <div class="form-row">
                    <!-- Grid column -->
                    <div class="col-md-6">
                        <!-- Material input -->
                        <div class="md-form form-group">
                            <input type="email" class="form-control validate" id="email" placeholder="Email">
                            <label for="email">Email</label>
                        </div>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-6">
                        <!-- Material input -->
                        <div class="md-form form-group">
                             <select class="mdb-select colorful-select dropdown-primary col-md-12" id="carrera">
                                <option value="" selected disabled>Seleccionar una opcion</option>
                                <option value="1">Ingenieria en Sistemas</option>
                                <option value="2">Ingenieria Informatica</option>
                            </select>
                            <label for="carrera">Carrera:</label>
                        </div>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->                
            </div>
            
            <!--Footer-->
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                <button class="btn btn-indigo" id="modal-agregar-btn">Guardar</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!-- Modal agregar y modificar estudiante -->

<!-- Modal show estudiante -->
<div class="modal fade" id="modal-show" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-notify modal-info modal-lg" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <p class="heading lead">Estudiante</p>
                
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
                                    <th scope="row">Nombre</th>
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
                                    <th scope="row">Carrera</th>
                                    <td id="td-carrera"></td>
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
<!-- Modal show estudiante -->

<!-- Modal delete estudiante -->
<div class="modal fade" id="modal-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-notify modal-danger modal-sm" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <p class="heading lead">Eliminar Estudiante</p>
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
            <!--Body-->
            <div class="modal-body">
                <div class="text-center">
                    <i class="fa fa-plus fa-4x mb-3 animated rotateIn"></i>
                    <p>Se eliminará al estudiante:</p>
                    <b id="delete-estudiante"></b>
                </div>
            </div>
            <!--Footer-->
            <div class="modal-footer justify-content-center">
                <button class="btn btn-danger" id="modal-delete-btn" data-dismiss="modal">Eliminar</button>
            </div>
        </div
>        <!--/.Content-->
    </div>
</div>                               
@endsection
@section('script')
<script>
    var row_tr = null;
    var type_ = null;
    var url_ = null;
    // SCRIPT PARA MOSTRAR ESTUDIANTE EN EL MODAL
    $(document).on('click', '.btn-modal-show', function() {
        $.get('/estudiante/'+$($(this).parents("tr")).data('id'), function(data){
            $('#td-ci').text(data.estudiante.ciEst);
            $('#td-apellido').text(data.estudiante.apellidoEst);
            $('#td-nombre').text(data.estudiante.nombreEst);
            $('#td-email').text(data.estudiante.emailEst);
            $('#td-telefono').text(data.estudiante.telefono);
            $('#td-proyecto').text(data.estudiante.idProyecto);
            $('#td-carrera').text(data.estudiante.idCarrera);
        });
        $('#modal-show').modal('show');
    });
    // SCRIPT PARA MOSTRAR ESTUDIANTE EN EL MODAL

    // SCRIPT PARA AGREGAR ESTUDIANTE EN EL MODAL
    $(document).on('click', '#btn-modal-add', function(e) {
        type_ = 'POST';
        url_ = '/estudiante';
        $('#ci').val('');
        $('#nombre').val('');
        $('#apellidos').val('');
        $('#email').val('');
        $('#telefono').val('');
    });
    // SCRIPT PARA AGREGAR ESTUDIANTE EN EL MODAL
    $(document).on('click', '#modal-agregar-btn', function(e) {
        e.preventDefault();
        $.ajax({
            type: type_,
            url: url_,
            data: {
                '_token': $('input[name=_token]').val(),
                'ciEst': $('#ci').val(),
                'nombreEst': $('#nombre').val(),
                'apellidoEst': $('#apellidos').val(),
                'emailEst': $('#email').val(),
                'telefono': $('#telefono').val(),
                'idCarrera': $('#carrera').val(),
            },
            success : function(data) {
                toastr.success(data.message);
                location.reload();
            },
            error : function(xhr, status) {
                toastr.error('Disculpe, existio un problema!');
            },
        });
        $('#modal-estudiante').modal('hide');
        clear();
    });

    // SCRIPT PARA EDITAR ESTUDIANTE EN EL MODAL
    $(document).on('click', '.btn-modal-edit', function() {
        $.get('/estudiante/'+$($(this).parents("tr")).data('id'), function(data){
            $('#ci').val(data.estudiante.ciEst);
            $('#nombre').val(data.estudiante.nombreEst);
            $('#apellidos').val(data.estudiante.apellidoEst);
            $('#email').val(data.estudiante.emailEst);
            $('#telefono').val(data.estudiante.telefono);
            console.log($('#carrera')[0][1]);
            $($('#carrera')[0][0]).removeAttr('selected');
            if (data.estudiante.idCarrera == 1) {
                $($('#carrera')[0][1]).attr('selected','');
            }
            else{
                $($('#carrera')[0][2]).attr('selected','');
            }
            // $('#carrera').val(data.estudiante.idCarrera);
        });
        type_ = 'PUT';
        url_ = '/estudiante/'+$($(this).parents("tr")).data('id');
        $('#modal-estudiante').modal('show');
    });

    // SCRIPT PARA ELIMINAR ESTUDIANTE EN EL MODAL
    $(document).on('click', '.btn-modal-delete', function() {
        var nombre = $(this).parents("tr").find("td")[2].innerHTML;
        var apellido = $(this).parents("tr").find("td")[1].innerHTML;
        $('#delete-estudiante').text(nombre + ' ' + apellido);
        row_tr = $($(this).parents("tr"));
        type_ = 'DELETE';
        url_ = '/estudiante/'+$($(this).parents("tr")).data('id');
        $('#modal-delete').modal('show');
    });
    $(document).on('click', '#modal-delete-btn', function(e) {
        e.preventDefault();
        $.ajax({
            type: type_,
            url: url_,
            data: {
                '_token': $('input[name=_token]').val(),
            },
            success : function(data) {
                row_tr.remove();
                toastr.success(data.message);
            },
        });
        clear();
    });
    // SCRIPT PARA ELIMINAR ESTUDIANTE EN EL MODAL
    function clear(){
        row_tr = null;
        type_ = null;
        url_ = null;
    }
</script>
@endsection