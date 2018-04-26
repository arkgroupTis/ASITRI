@extends('layouts.app')

@section('content')
<a href="/estudiante/create" class="btn btn-indigo" role="button">Nueva Estudiante</a>
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
@endsection