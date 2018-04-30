@extends('layouts.app')

@section('content')
<h1 class="text-center">ESTUDIANTES</h1>
<button type="button" class="btn btn-indigo" data-toggle="modal" data-target="#modal-estudiante">
    Nuevo Estudiante
</button>
<hr>
<table class="table table-striped table-sm">
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
        <tr>
            <td>{{ $estudiante->ciEst }}</td>
            <td>{{ $estudiante->apellidoEst }}</td>
            <td>{{ $estudiante->nombreEst }}</td>
            <td>{{ $estudiante->emailEst }}</td>
            <td>{{ $estudiante->telefono }}</td>
            <td>{{ $estudiante->idProyecto }}</td>
            <td>{{ $estudiante->idCarrera }}</td>
            <td>
            	<a class="btn-floating btn-sm btn-indigo" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-2 fa-lg"></i></a>
            	<a class="btn-floating btn-sm btn-info" data-toggle="tooltip" data-placement="top" title="editar"><i class="fa fa-edit mt-2 ml-2 fa-lg"></i></a>
				      <a class="btn-floating btn-sm btn-danger" data-toggle="tooltip" data-placement="top" title="eliminar"><i class="fa fa-trash mt-2 ml-2 fa-lg"></i></a>
            </td>
        </tr>
		@endforeach
    </tbody>
</table>
  
<!-- Central Modal Medium Info -->
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
            <form action="{{url('estudiante')}}" method="post">
                {{ csrf_field() }}
                <!--Body-->
                <div class="modal-body">
                    <!-- Grid row -->
                    <div class="form-row">
                        <!-- Grid column -->
                        <div class="col-md-12">
                            <!-- Material input -->
                            <div class="md-form form-group">
                                <input type="text" class="form-control validate" id="nombre" placeholder="Nombre" name="nombreEst">
                                <label for="nombre">Nombre:</label>
                            </div>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-12">
                            <!-- Material input -->
                            <div class="md-form form-group">
                                <input type="text" class="form-control validate" id="apellidos" placeholder="Apellidos" name="apellidoEst">
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
                                <input type="text" class="form-control validate" id="ci" placeholder="CI" name="ciEst">
                                <label for="ci">CI:</label>
                            </div>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-6">
                            <!-- Material input -->
                            <div class="md-form form-group">
                                 <input type="number" class="form-control validate" id="telefono" placeholder="Telefono" name="telefono">
                                 <label for="telefono">Telefono:</label>
                            </div>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->

                    <!-- Grid row -->
                    <div class="form-row">
                        <!-- Grid column -->
                        <div class="col-md-12">
                            <!-- Material input -->
                            <div class="md-form form-group">
                                <input type="email" class="form-control validate" id="email" placeholder="Email" name="email">
                                <label for="email">Email</label>
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
                                <input type="text" class="form-control validate" id="proyecto" placeholder="proyecto" name="proyecto">
                                <label for="proyecto">Proyecto:</label>
                            </div>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-6">
                            <!-- Material input -->
                            <div class="md-form form-group">
                                 <input type="text" class="form-control validate" id="carrera" placeholder="Carrera" name="carrera">
                                 <label for="carrera">Carrera:</label>
                            </div>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->                
                </div>
                
                <!--Footer-->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                    <button type="submit" class="btn btn-indigo">Guardar</button>
                </div>
            </form>
        </div>
        <!--/.Content-->
    </div>
</div>
<!-- Central Modal Medium Info-->

                                          
@endsection