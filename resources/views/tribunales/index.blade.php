@extends('layouts.app')
@section('content')
{{ csrf_field() }}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<h1 class="text-center">Tribunales</h1>
<div class="form-group row">
    <label for="buscador" class="col-sm-2 col-form-label col-form-label-lg">Buscador :</label>
    <div class="col-sm-10">
        <input class="form-control form-control-lg" id="Search1" type="text" placeholder="Tribunal..">	
    </div>
</div>
<div >
    <table class="table table-bordered table-striped tablaScroll3 ">
        <thead style="">
            <tr>

                <th style="width: 20%" class="text-center">Nombre Tribunal</th>
                <th style="width: 20%" class="text-center">Proyectos asignados</th>
                <th style="width: 60%" class="text-center">Proyectos</th>
            </tr>
        </thead>
        
        <tbody id="datosTabla">
        @foreach($tribunales as $tribunal)
            <tr>
                <td style="width: 20%">
                    {{ $tribunal->apePaternoDoc }} {{ $tribunal->apeMaternoDoc }} {{ $tribunal->nombreDoc }}
                </td>
                <td style="width: 20%" class="text-center">{{ $tribunal->cantidad}}</td>
                <td style="width: 60%">
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
            $("#datosTabla tr").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          });
        });
</script>
@endsection
