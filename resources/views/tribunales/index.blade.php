@extends('layouts.app')
@section('content')
<h1 class="text-center">Tribunales</h1>
<div class="form-group row">
    <label for="buscador" class="col-sm-2 col-form-label col-form-label-lg">Buscar :</label>
    <div class="col-sm-10">
        <input class="form-control form-control-lg" id="Search1" type="text" placeholder="Tribunal..">	
    </div>
</div>
<div >
    <table class="table table-bordered table-striped tablaScroll3">
        <thead style="">
            <tr>
                <th>Nombre Tribunal</th>
                <th>Proyectos asignados</th>
                <th>Proyecto</th>
            </tr>
        </thead>
        <tbody id="table1">
        @foreach($tribunales as $tribunal)
            <tr>
                <td>{{ $tribunal->apePaternoDoc }} {{ $tribunal->apeMaternoDoc }} {{ $tribunal->nombreDoc }}</td>
                <td>{{ $tribunal->cantidad}}</td>
                <td>
                    @foreach($tribunal->proyecto as $aux)
                            {{$tribunal->i++}} {{ $aux}} <br>
                    @endforeach
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    
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
</script>
@endsection
