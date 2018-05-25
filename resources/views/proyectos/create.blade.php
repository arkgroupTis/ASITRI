@extends('layouts.app')

			

@section('content')
    
    <h1 align="center">NUEVO PROYECTO</h1>

	<form action="{{url('/proyectos')}}" method="POST">
        {{csrf_field()}}


    <!-- Grid row -->
    <div class="form-row">
        <!-- Grid column -->
        <div class="col-md-12">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" name="nombreProy" required>
                <label>Nombre del Proyecto</label>
            </div>
        </div>
        <!-- Grid column -->

    </div>   
    
    <!-- Grid row -->
    
    <div class="row">
        <label class="col-sm-6 col-form-label">Area Proyecto: </label>
        <label class="col-sm-6 col-form-label">Subarea Proyecto: </label>
        <div class="col-md-6">
			<select class="mdb-select colorful-select dropdown-primary" multiple name="area[]">
				<option value=""></option>
				@foreach(($res[2]) as $area)
                        <option value="{{ $area-> idArea}}"> {{ $area-> nombreArea}}</option>
                @endforeach
			</select>
        </div>
        <div class="col-md-6">
            <select class="mdb-select colorful-select dropdown-primary" name="subarea">
                <option value=""></option>
                @foreach(($res[2]) as $area)
                        <option value="{{ $area-> idArea}}"> {{ $area-> nombreArea}}</option>
                @endforeach
            </select>
        </div>

        <!--<div class='col-md-4'>
            <input placeholder="Fecha Inicio del Proyecto" type="text" name="fechaIni" class="form-control datepicker">
        </div>
        <div class='col-md-4'>
            <input placeholder="Fecha Fin del Proyecto" type="text" name="fechaFin" class="form-control datepicker">
        </div>-->          
    </div>
    <!-- Grid row -->
    <div class="row">
        <!-- Material input -->
        <label class="col-sm-6 col-form-label">Objetivos:</label>
        <label class="col-sm-6 col-form-label">Descripcion:</label>
        <div class="col-sm-6">
            <div class="md-form mt-0">
              <textarea type="text" name="objetivos" class="form-control md-textarea" rows="2" required></textarea>
            </div>
        </div>
        <!-- Material input -->
        <div class="col-sm-6">
            <div class="md-form mt-0">
              <textarea type="text" name="descripcion" class="form-control md-textarea" rows="2" required></textarea>
            </div>
        </div>
    </div>
    <!--<div class="form-row">
        <label class="col-md-3">Fecha registro del proyecto:</label>
        <input placeholder="Fecha Registro del Proyecto" type="text" name="fechaRegistro" class="form-control datepicker col-sm-6">
    </div>-->
    <div class="form-row">
        

    	<div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" name="periodo">
                <label >Periodo: </label>
            </div>
        </div>

        <div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" name="sesion">
                <label >Sesion de consejo</label>
            </div>
        </div>
        <label class="col-sm-2 col-form-label">Modalidad: </label>
        <div class="col-md-4">

            <select class="mdb-select colorful-select dropdown-primary col-md-12" name="modalidad">
                @foreach($res[3] as $modalidad)
                <option value="{{ $modalidad-> idModalidad}}"> {{ $modalidad-> nombreMod}} </option>
                @endforeach
            </select>
        </div>
  </div>
    <div class="">
        <button type="submit" class="btn  btn-primary btn-md">GUARDAR</button>
        <button type="reset" class="btn  btn-info btn-md">CANCELAR</button>    
    </div>
</form>
@endsection
@section('script')
    
@endsection