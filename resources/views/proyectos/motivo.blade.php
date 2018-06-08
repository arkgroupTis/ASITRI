@extends('layouts.app')
@section('content')
{{ csrf_field() }}
<div class="row">
    @if($proy_est)
    <div class="col-sm-8">
        <div class="jumbotron">
            <h1 class="h1-responsive">Estudiante</h1>

            <p class="lead"><b>Nombre:</b> {{ $proy_est->estudiante->nombreEst }}</p>
            <p class="lead"><b>Apellido:</b> {{ $proy_est->estudiante->apellidoEst }}</p>
            <p class="lead"><b
                >CI:</b> {{ $proy_est->estudiante->ciEst }}</p>
            <hr class="my-2">
            <h1 class="h1-responsive">Proyecto</h1>
        
            <p class="lead"><b>Titulo:</b> {{ $proy_est->proyecto->titulo }}</p>
            <p class="lead"><b>Tutor 1:</b> {{ $tutor1->docente->apePaternoDoc }} {{ $tutor1->docente->apeMaternoDoc }} {{ $tutor1->docente->nombreDoc }} <br>
              <b>Tutor 2:</b> 
              @if(empty($tutor2))
                No existe
              @endif
              @if(!empty($tutor2))
                {{ $tutor2->docente->apePaternoDoc }} {{ $tutor2->docente->apeMaternoDoc }} {{ $tutor2->docente->nombreDoc }}  
              @endif
              
            </p>
            <p class="lead">
                <b>Tribunal 1:</b>
                @if(empty($tribunal1))
                    No existe
                @endif
                @if(!empty($tribunal1))
                    {{ $tribunal1->docente->apePaternoDoc }} {{ $tribunal1->docente->apeMaternoDoc }} {{ $tribunal1->docente->nombreDoc }}  
                @endif
                <br>
                <b>Tribunal 2:</b>
                @if(empty($tribunal2))
                    No existe
                @endif
                @if(!empty($tribunal2))
                    {{ $tribunal2->docente->apePaternoDoc }} {{ $tribunal2->docente->apeMaternoDoc }} {{ $tribunal2->docente->nombreDoc }}  
                @endif
                <br>
                <b>Tribunal 3:</b>
                @if(empty($tribunal3))
                    No existe
                @endif
                @if(!empty($tribunal3))
                    {{ $tribunal3->docente->apePaternoDoc }} {{ $tribunal3->docente->apeMaternoDoc }} {{ $tribunal3->docente->nombreDoc }}  
                @endif
                <br>
            </p>
            <p class="lead"><b>Objetivos:</b>{{ $proy_est->proyecto->objetivos }}</p>
            <p class="lead"><b>Descripcion:</b> {{ $proy_est->proyecto->descripcion }}</p>
            <p class="lead"><b>Area:</b> 
            @foreach($proy_est->proyecto->proyecto_has_area as $pha)
                {{ $pha->area->nombreArea }}, 
            @endforeach
            </p>
        </div>
    </div>
    @else
        <blockquote class="blockquote bq-danger">
            <p class="bq-title">No tiene proyecto asignado</p>
            <p>Es necesario asignar un proyecto al estudiante, para poder ver las opciones que se pueden aplicar a un proyecto!</p>
            <a href="/proyecto_est" class="btn btn-red btn-lg btn-block" role="button">Asignar Proyecto</a>
        </blockquote>
    @endif
    

    <div class="col-sm-4" {{$proy_est?'':'hidden'}}>
        <div class="jumbotron">
            <a href="/estudiante/proyecto/{{$proy_est?$proy_est->idProyecto:1}}/tribunales" class="btn cyan btn-lg btn-block btn-rounded" role="button">Asignar Tribunales</a>
            
            <a class="btn cyan btn-lg btn-block btn-rounded" role="button" id="btn-defensa"><font color="white">Defensa</a>
        </div>
    </div>
</div>
<div class="modal fade" id="modal-defensa" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog modal-" role="document">
        <div class="modal-content">
            <div class="modal-header" style="background-color: grey">
                <h3 class="heading lead" style="color: white">Fecha defensa</h3>
                
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>
            <div class="modal-body" align="center" style="color: black">
                <p class="red-text text-left">*Obligatorio</p>
                <br>
                <br>
                <br>
                
                <div class="row col-md-9">
                    <h3>La fecha de defensa que se elija sera la finalizacion de su proyecto <b class="h5 red-text">*</b></h3>
                </div>
                <br>
                <br>
                <br>
                <div class="col-md-12">
                    <div class="md-form form-group">
                        <input type="date" id="date-picker-defensa" class="form-control">
                    </div>
                </div>
                <br>
            </div>
            
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                <button class="btn btn-indigo" id="modal-guardar-btn">Guardar</button>
            </div>
        </div>          
    </div>
</div>

@endsection
@section('script')
@if($proy_est)
<script>   
       
     $(document).on('click', '#btn-defensa', function() {  
        $.get('/proyectos/{{$proy_est->idProyecto}}', function(data){  
               
           $('#date-picker-defensa').val(data.proyecto.fechaFin);  
            console.log(data); 
       }); 
   
        $('#modal-defensa').modal('show'); 
    });    
    $(document).on('click', '#modal-guardar-btn', function(e) {    
        e.preventDefault();    
    
            $.ajax({   
                type: 'POST',  
                url: '/estudiante/proyecto/defensa',   
                data: {    
                    '_token': $('input[name=_token]').val(),   
                    'idProyecto': '{{$proy_est->idProyecto}}',   
                    'fecha': $('#date-picker-defensa').val(),  
                }, 
                success : function(data) { 
                    location.reload(); 
                }, 
            });    
            $('#modal-defensa').modal('hide'); 
    });    
</script>  
@endif
@endsection