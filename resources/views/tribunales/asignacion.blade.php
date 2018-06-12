@extends('layouts.app')
@section('content')
{{ csrf_field() }}
<h1 class="text-center">Tribunales - Asignacion</h1>

<div class="row z-depth-1-half">
    <div class="col-sm-5">
        <p class="lead"><b>Estudiantes:</b><br>
        @foreach($proyecto->proyecto_estudiante as $estudiantes)
            {{ $estudiantes->estudiante->nombreEst . ' ' . $estudiantes->estudiante->apellidoEst }}<br>
        @endforeach
        </p>
    </div>
    <div class="col-sm-7">
        <p class="lead"><b>Proyecto:</b> {{ $proyecto->titulo }}</p>
    </div>
</div>
<br>
<h2>Recomendados</h2>
<div class="md-form input-group mb-3">
    <input type="text" class="form-control pl-0 rounded-0" id="search_docente" type="text" placeholder="Buscar Docentes/Profesionales...">

</div>
<div class="row">
    <table class="table table-striped table-sm tablaScroll4">
        <thead>
            <tr>
                <th style="width: 20%" ><font size="3">Docente </font></th>
                <th style="width: 50%" ><font size="3">Areas</font></th>
                <th style="width: 5%" class="text-center" ><font size="3">Trib</font></th>
                <th style="width: 5%" class="text-center" ><font size="3">Tut</font></th>
                <th style="width: 10%" class="text-center" ><font size="3">Asignar</font></th>
            </tr>
        </thead>
        <tbody id="table1">
        @foreach($docentes as $docente)
            <tr>
                <td style="width: 20%" >{{ $docente->apePaternoDoc .' '. $docente->apeMaternoDoc .' '. $docente->nombreDoc }}</td>
                <td style="width: 50%" >
                @foreach($docente->tiene as $pha)
                    {{ $pha->area->nombreArea }}, 
                @endforeach 
                </td>

                <td style="width: 5%" class="text-center">{{ $docente->cantTrib }}</td>
                <td style="width: 5%" class="text-center">{{ $docente->cantTut }}</td>

                <td style="width: 10%" class="text-center" >
                    @if(!$docente->tribunal)
                    <a href="/estudiante/proyecto/{{$proyecto->idProyecto}}/{{$docente->idDoc}}/asignacion" class="btn-floating btn-sm btn-light-green" onClick="if (! confirm('Se asignara el tribunal a este proyecto!')) return false;" data-toggle="tooltip" data-placement="top" title="Asignar"><i class="fas fa-plus-circle mt-1 ml-1 fa-2x"></i></i></a>
                    @else
                    <span class="badge badge-success">asignado</span>
                    <a data-id="{{$docente->idDoc}}" class="btn-floating btn-sm btn-danger btn-modal-renuncia" data-toggle="tooltip" data-placement="top" title="Renuncia"><i class="fa fa-times mt-2 ml-2 fa-lg"></i></a>
                    @endif
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
<br>
<h2>Otros</h2>
<div class="md-form input-group mb-3">
    <input type="text" class="form-control pl-0 rounded-0" id="search_docente2" type="text" placeholder="Buscar Docentes/Profesionales...">
</div>
<div class="row">
    <table class="table table-striped table-sm tablaScroll4">
        <thead>
            <tr>
                <th style="width: 20%" ><font size="3">Docente </font></th>
                <th style="width: 50%" ><font size="3">Areas</font></th>
                <th style="width: 5%" class="text-center" ><font size="3">Trib</font></th>
                <th style="width: 5%" class="text-center" ><font size="3">Tut</font></th>
                <th style="width: 10%" class="text-center" ><font size="3">Asignar</font></th>
            </tr>
        </thead>
        <tbody id="table2">
        @foreach($extras as $docente)
            <tr>
                <td style="width: 20%" >{{ $docente->apePaternoDoc .' '. $docente->apeMaternoDoc .' '. $docente->nombreDoc }}</td>
                <td style="width: 50%" >
                @foreach($docente->tiene as $pha)
                    {{ $pha->area->nombreArea }}, 
                @endforeach 
                </td>

                <td style="width: 5%" class="text-center">{{ $docente->cantTrib }}</td>
                <td style="width: 5%" class="text-center">{{ $docente->cantTut }}</td>

                <td style="width: 10%" class="text-center" >
                    @if(!$docente->tribunal)
                    <a href="/estudiante/proyecto/{{$proyecto->idProyecto}}/{{$docente->idDoc}}/asignacion" class="btn-floating btn-sm btn-light-green" onClick="if (! confirm('Se asignara el tribunal a este proyecto!')) return false;" data-toggle="tooltip" data-placement="top" title="Asignar"><i class="fas fa-plus-circle mt-1 ml-1 fa-2x"></i></i></a>
                    @else
                    <span class="badge badge-success">asignado</span>
                    <a data-id="{{$docente->idDoc}}" class="btn-floating btn-sm btn-danger btn-modal-renuncia" data-toggle="tooltip" data-placement="top" title="Renuncia"><i class="fa fa-times mt-2 ml-2 fa-lg"></i></a>
                    @endif
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
<!-- Modal renuncia renuncia -->
<div class="modal fade" id="modal-renuncia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-notify modal-danger modal-lg" role="document">
        <!--Content-->
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
                <p class="heading lead">Renuncia de Tribunal</p>
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
            <!--Body-->
            <div class="modal-body">
                <p class="red-text">*Obligatorio</p>
                <!-- Grid row -->
                <div class="form-row">
                    <div class="col-md-12">
                        <label>Motivo de Renuncia <b class="h5 red-text">*</b></label>
                    </div>
                    <div class="col-md-12">
                        <select class="mdb-select colorful-select dropdown-primary" id="motivo_select">
                            <option value="" disabled selected>Seleccionar una opcion!</option>
                            <option value="option 1">Baja disponibilidad de tiempo</option>
                            <option value="option 2">Motivos de Salud</option>
                            <option value="option 3">Viajes o vacaciones programadas</option>
                            <option value="option 4">Otros...</option>
                        </select>
                        <div class="md-form form-group">
                            <textarea type="text" id="motivo" class="form-control md-textarea" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <label for="date-picker-renuncia">Fecha de Renuncia <b class="h5 red-text">*</b></label>
                    </div>
                    <div class="col-md-12">
                        <div class="md-form form-group">
                            <input type="date" id="date-picker-renuncia" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
            
            <!--Footer-->
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                <button class="btn btn-indigo" id="modal-guardar-btn">Guardar</button>
            </div>
        </div>
        <!--/.Content-->
    </div>
</div>
<!-- Modal renuncia estudiante -->

@endsection
@section('script')
<script>
    $(document).ready(function(){
		  $("#search_docente").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#table1 tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
    $(document).ready(function(){
          $("#search_docente2").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#table2 tr").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          });
        });
    // SCRIPT PARA LA RENUNCIA DE TRIBUNAL
    var idDoc = null;
    $(document).on('click', '.btn-modal-renuncia', function() {
        $('#motivo').val('');
        $('#date-picker-renuncia').val('{{date("Y-m-d")}}');
        idDoc = $(this).data('id');
        $('#modal-renuncia').modal('show');
    });
    $(document).on('click', '#modal-guardar-btn', function(e) {
        e.preventDefault();
        if ($('#motivo_select').val() != null) {
            $.ajax({
                type: 'POST',
                url: '/estudiante/proyecto/renuncia',
                data: {
                    '_token': $('input[name=_token]').val(),
                    'idProyecto': '{{$proyecto->idProyecto}}',
                    'idDoc': idDoc,
                    'motivo_select': $('#motivo_select').val(),
                    'motivo': $('#motivo').val(),
                    'fecha': $('#date-picker-renuncia').val(),
                },
                success : function(data) {
                    idDoc = null;
                    location.reload();
                },
            });
            $('#modal-renuncia').modal('hide');
        } else {
            toastr.error('seleccionar un motivo!');
        }
    });
</script>
@endsection