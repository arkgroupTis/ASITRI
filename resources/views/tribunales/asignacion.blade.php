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
<div class="row">
    <div class="col-sm-6"></div>
    <div class="col-sm-6">
        <label class="sr-only" for="search_docente">Docente</label>
        <div class="md-form input-group mb-3">
            <div class="input-group-prepend">
                <span class="input-group-text md-addon">Buscar</span>
            </div>
            <input type="text" class="form-control pl-0 rounded-0" id="search_docente" placeholder="Docente">
        </div>
    </div>
</div>
<div class="row">
    <table class="table table-bordered table-striped table-sm">
        <thead>
            <tr>
                <th>Docente </th>
                <th>Area</th>
                <th>Proyectos</th>
                <th>acciones</th>
            </tr>
        </thead>
        <tbody>
        @foreach($docentes as $docente)
            <tr>
                <td>{{ $docente->apePaternoDoc .' '. $docente->apeMaternoDoc .' '. $docente->nombreDoc }}</td>
                <td>{{ $docente->nombreArea }}</td>
                <td>{{ $docente->cant }}</td>
                <td>
                    @if(!$docente->tribunal)
                    <a href="/estudiante/proyecto/{{$proyecto->idProyecto}}/{{$docente->idDoc}}/asignacion" class="btn-floating btn-sm btn-indigo" onClick="alert('Se asignara el tribunal a este proyecto!')" data-toggle="tooltip" data-placement="top" title="Asignar"><i class="fas fa-plus-circle mt-1 ml-1 fa-2x"></i></i></a>
                    @else
                    <span class="badge badge-success">asignado</span>
                    <a data-id="{{$docente->idDoc}}" class="btn-floating btn-sm btn-danger btn-modal-renuncia" data-toggle="tooltip" data-placement="top" title="Renuncia"><i class="fa fa-times mt-2 ml-2 fa-lg"></i></a>
                    @endif
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
    {{ $docentes->links() }}
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
                <!-- Grid row -->
                <div class="form-row">
                    <div class="col-md-12">
                        <!--Blue select-->
                        <select class="mdb-select colorful-select dropdown-default" id="motivo_select">
                            <option value="" selected disabled>Seleccionar una opcion</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                            <option value="4">Option 4</option>
                            <option value="otro">Otro</option>
                        </select>
                        <label>Motivo de Renuncia</label>
                        <!--/Blue select-->
                    </div>
                    <div class="col-md-12">
                        <div class="md-form form-group">
                            <textarea type="text" id="motivo" class="form-control md-textarea" rows="3"></textarea>
                        </div>
                    </div>

                    <!-- Grid column -->
                    <div class="col-md-12">
                        <!-- Material input -->
                        <div class="md-form form-group">
                            <input placeholder="Selected date" type="text" id="date-picker-renuncia" class="form-control datepicker">
                            <label for="date-picker-renuncia">Fecha de Renuncia</label>
                        </div>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->              
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
    // SCRIPT PARA LA RENUNCIA DE TRIBUNAL
    var idDoc = null;
    $(document).on('click', '.btn-modal-renuncia', function() {
        $('#motivo').val('');
        $('#date-picker-renuncia').val('');
        idDoc = $(this).data('id');
        $('#modal-renuncia').modal('show');
    });
    $(document).on('click', '#modal-guardar-btn', function(e) {
        e.preventDefault();
        var motivo = null;
        if ($('#motivo_select').val() != null) {
            if ($('#motivo_select').val() == "otro") {
                if ($('#motivo').val()=="") {
                    toastr.error('describir un motivo!');
                } else {
                    motivo = $('#motivo').val();
                }
            } else {
                motivo = $('#motivo_select').val();
            }
        } else {
            toastr.error('seleccionar un motivo!');
        }
        if (motivo != null) {
            $.ajax({
                type: 'POST',
                url: '/estudiante/proyecto/renuncia',
                data: {
                    '_token': $('input[name=_token]').val(),
                    'idProyecto': {{$proyecto->idProyecto}},
                    'idDoc': idDoc,
                    'motivo': motivo,
                    'fecha': $('#date-picker-renuncia').val(),
                },
                success : function(data) {
                    idDoc = null;
                    location.reload();
                },
            });
        }
    });
</script>
@endsection
