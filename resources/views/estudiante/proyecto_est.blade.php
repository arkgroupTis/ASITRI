@extends('layouts.app')

@section('content')
{{ csrf_field() }}

<h1 class="text-center"> Asignacion de Proyectos</h1>
<label></label>
<div>
	<div class="row">
		<!--Blue select-->
		<label class="col-md-2"></label>
        <label class="col-md-1">Proyecto</label>
        <select class="mdb-select colorful-select dropdown-primary col-md-6">
        	<option value=""></option>
            @foreach($res[0] as $proyectos)
            <option> {{ $proyectos-> titulo}} </option>
            @endforeach
        </select>
        <!--/Blue select-->
	</div>
	<div class="row">
		<!--Blue select-->
		<label class="col-md-2"></label>
        <label class="col-md-1">Estudiante</label>
        <select class="mdb-select colorful-select dropdown-primary col-md-6">
        	<option value=""></option>
            @foreach($res[1] as $estudiante)
            <option> {{ $estudiante-> apellidoEst}} {{ $estudiante-> nombreEst}} </option>
            @endforeach
        </select>
        <!--/Blue select-->
	</div>
	<div class="row">
		<!--Blue select-->
		<label class="col-md-2"></label>
        <label class="col-md-1">Estudiante</label>
        <select class="mdb-select colorful-select dropdown-primary col-md-6">
        	<option value=""></option>
            @foreach($res[1] as $estudiante)
            <option> {{ $estudiante-> apellidoEst}} {{ $estudiante-> nombreEst}} </option>
            @endforeach
        </select>
        <!--/Blue select-->
	</div>
	<label class="col-md-2"></label>
	<label class="col-md-3"></label>
	<button class="btn btn-success">Asignar</button>
</div>
@endsection