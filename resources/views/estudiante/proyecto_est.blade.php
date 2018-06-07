@extends('layouts.app')

@section('content')
{{ csrf_field() }}

<h1 class="text-center"><font color="#212121"> Asignacion de Proyectos </font></h1>
<label></label>
<div>
	<div class="row">
		<!--Blue select-->
        <label class="col-md-1">Proyecto</label>
        <select class="mdb-select colorful-select dropdown-primary col-md-11" id="idProyecto">
        	<option value=""></option>
            @foreach($res[0] as $proyectos)
            <option value="{{ $proyectos-> idProyecto}}"> {{ $proyectos-> titulo}} </option>
            @endforeach
        </select>
        <!--/Blue select-->
	</div>
<div class="row">
    <label class="col-md-6">Estudiante 1</label>
    <label class="col-md-6">Estudiante 2</label>
        <!--Blue select-->
        <select class="mdb-select colorful-select dropdown-primary col-md-6" id="estudiante1">
            <option value=""></option>
            @foreach($res[1] as $estudiante)
            <option value="{{ $estudiante-> idEstudiante}}"> {{ $estudiante-> apellidoEst}} {{ $estudiante-> nombreEst}} </option>
            @endforeach
        </select>
        <!--/Blue select-->
        <!--Blue select-->
        <select class="mdb-select colorful-select dropdown-primary col-md-6" id="estudiante2">
            <option value=""></option>
            @foreach($res[1] as $estudiante)
            <option value="{{ $estudiante-> idEstudiante}}"> {{ $estudiante-> apellidoEst}} {{ $estudiante-> nombreEst}} </option>
            @endforeach
        </select>
        <!--/Blue select-->
</div>
<div class="row">
        <label class="col-md-6">Tutor 1</label>
        <label class="col-md-6">Tutor 2</label>
        <!--Blue select-->
        <select class="mdb-select colorful-select dropdown-primary col-md-6" id="tutor1">
            <option value=""></option>
            @foreach($res[2] as $docente)
            <option value="{{ $docente-> idDoc}}"> {{ $docente-> apePaternoDoc}} {{ $docente-> apeMaternoDoc}} {{ $docente-> nombreDoc}} </option>
            @endforeach
        </select>
        <!--/Blue select-->
        <!--Blue select-->
        <select class="mdb-select colorful-select dropdown-primary col-md-6" id="tutor2">
            <option value=""></option>
            @foreach($res[2] as $docente)
            <option value="{{ $docente-> idDoc}}"> {{ $docente-> idDoc}} {{ $docente-> apePaternoDoc}} {{ $docente-> apeMaternoDoc}} {{ $docente-> nombreDoc}} </option>
            @endforeach
        </select>
        <!--/Blue select-->
</div>
	<label class="col-md-5"></label>
	<button class="btn btn-success" id="asignar">Asignar</button>
</div>
@endsection
@section('script')
<script>
    $(document).on('click', '#asignar', function(e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '/proyecto_estudiante',

            data: {
                '_token': $('input[name=_token]').val(),
                'idProyecto': $('#idProyecto').val(),
                'estudiante1': $('#estudiante1').val(),
                'estudiante2': $('#estudiante2').val(),
                'tutor1': $('#tutor1').val(),
                'tutor2': $('#tutor2').val(),
            },
            success : function(data) {
                toastr.success(data.message);
                location.reload(true);
                //console.log(data);
            },
            error : function(xhr, status) {
                toastr.error('Disculpe, existio un problema!');
            },
            
        });
    });
    function clear() 
    {
    }
</script>
@endsection