@extends('layouts.app')
@section('content')
{{ csrf_field() }}
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<h1 class="text-center">Tribunales</h1>
<div class="form-group row">
    
    <div class="col-md-5">
	    		
                <label class="sr-only" ></label>
                <div class="md-form input-group mb-3">
                <input type="text" class="form-control pl-0 rounded-0" id="Search1" type="text" placeholder="Buscar Tribunales...">
                </div>
	    </div>  
</div>
<div >
    <table class="table table-striped tablaScroll3 ">
        <thead style="">
            <tr>

                <th style="width: 30%" >Nombre Tribunal</th>
                <th style="width: 20%" class="text-center">Proyectos asignados</th>
                <th style="width: 50%" class="text-center">Proyectos</th>
            </tr>
        </thead>
        
        <tbody id="datosTabla">
        @foreach($tribunales as $tribunal)
            <tr>
                <td style="width: 30%">
                    {{ $tribunal->apePaternoDoc }} {{ $tribunal->apeMaternoDoc }} {{ $tribunal->nombreDoc }}
                </td>
                <td style="width: 20%" class="text-center">{{ $tribunal->cantidad}}</td>
                <td style="width: 50%">
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
