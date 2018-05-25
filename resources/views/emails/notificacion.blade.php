@extends('layouts.app')

@section('content')
<h1 align="center">NUEVO PROYECTO</h1>

<form action="{{url('/email')}}" method="POST">
    {{csrf_field()}}
    <div class="form-row">
        <div class="col-md-12">
            <div class="md-form form-group">
                <input type="text" class="form-control" name="nombre" required>
                <label>Nombre</label>
            </div>
        </div>
    </div>
    <div class="form-row">
        <div class="col-md-12">
            <div class="md-form form-group">
                <input type="text" class="form-control" name="email">
                <label >email: </label>
            </div>
        </div>
        <div class="col-md-12">
            <div class="md-form form-group">
                <input type="text" class="form-control" name="texto">
                <label >texto</label>
            </div>
        </div>
    </div>
    <div class="">
        <button type="submit" class="btn  btn-primary btn-md">GUARDAR</button>
        <button type="reset" class="btn  btn-info btn-md">CANCELAR</button>
    </div>
</form>
@endsection