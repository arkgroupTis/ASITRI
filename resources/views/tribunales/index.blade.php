@extends('layouts.app')
@section('content')
<h1 class="text-center">Tribunales</h1>
<div class="form-group row">
    <label for="buscador" class="col-sm-2 col-form-label col-form-label-lg">Buscar :</label>
    <div class="col-sm-10">
        <input class="form-control form-control-lg" id="buscador" type="text" placeholder="Tribunal..">	
    </div>
</div>
<div>
    <table class="table table-bordered table-striped">
        <thead style="">
            <tr>
                <th>Nombre Tribunal</th>
                <th>Proyecto</th>
            </tr>
        </thead>
        <tbody>
        @foreach($tribunales as $tribunal)
            <tr>
                <td>{{ $tribunal->docente->nombreDoc }}</td>
                <td>{{ $tribunal->proyecto->titulo }}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{ $tribunales->links() }}
</div>
@endsection
