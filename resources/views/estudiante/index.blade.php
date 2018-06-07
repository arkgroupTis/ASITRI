@extends('layouts.app')

@section('content')
{{ csrf_field() }}
<h1 class="text-center">ESTUDIANTES</h1>
<h3 class="text-center">Estudiantes con Proyecto Vigente</h3>
<div class="row">
  
   <div class="col-md-6">
       <label class="sr-only" for="search_estudent">Estudiante</label>
       <div class="md-form input-group mb-3">
           <input type="text" class="form-control pl-0 rounded-0" id="search_estudent" placeholder="Buscar estudiante...">
       </div>
   </div>
   <div class="col-md-3">
      
   </div>
   <div class="col-md-3">
       <!-- <button type="button" class="btn btn-indigo" id="btn-modal-add" data-toggle="modal" data-target="#modal-estudiante">
           Nuevo Estudiante
       </button> -->
       <button type="button" class="btn btn-cyan btn-rounded" id="btn-modal-add" data-toggle="modal" data-target="#modal-estudiante">
               <font color="white" size="3">Nuevo Estudiante</font>
            </button>
   </div>
</div>
<!-- es para mostrar mensaje para cuando hay errores -->
@if($errors->has())
   <script>
       setTimeout(function(){
           toastr.error('ups!, algo salio mal.');
       }, 300);
   </script>
@endif
<hr>

<div class="tablaScroll5">
    <table class="table table-striped table-sm tablaScroll5">
        <thead>
            <tr>
                <th style="width: 8%" class="text-center">CI</th>
              	<th style="width: 20%" >Apellidos</th>
              	<th style="width: 15%" >Nombre</th>
              	<th style="width: 10%" >Telefono</th>
              	<th style="width: 18%" >Carrera</th>
                <th style="width: 7%" >Proyecto</th>
              	<th style="width: 22%" class="text-center">Herramientas</th>
            </tr>
        </thead>
        <tbody class="tabla1">
        	@foreach($estudiantes_v as $estudiante)
            <tr data-id="{{ $estudiante->idEstudiante }}">
                <td style="width: 8%" class="text-center">{{ $estudiante->ciEst }}</td>
                <td style="width: 20%" >{{ $estudiante->apellidoEst }}</td>
                <td style="width: 15%" >{{ $estudiante->nombreEst }}</td>
                <td style="width: 10%" >{{ $estudiante->telefono }}</td>
                <td style="width: 18%" >{{ $estudiante->carrera->nombreCarrera }}</td>
                <td style="width: 7%" >
                @foreach($estudiante->proyecto_estudiante as $pha)
                    {{ $pha->estado }}, 
                @endforeach
                </td>
                <td style="width: 22%" class="text-center">
                	<a class="btn-floating btn-sm btn-mdb-color btn-modal-show" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-1 fa-lg"></i></a>
                	<a class="btn-floating btn-sm btn-blue btn-modal-edit" data-toggle="tooltip" data-placement="top" title="editar"><i class="fa fa-edit mt-2 ml-1 fa-lg"></i></a>
    				<!--<a class="btn-floating btn-sm btn-pink btn-modal-delete" data-toggle="tooltip" data-placement="top" title="eliminar"><i class="fa fa-trash mt-2 ml-1 fa-lg"></i></a>-->
                    <a class="btn-floating btn-sm btn-light-green" href="/estudiante/{{ $estudiante->idEstudiante }}/proyecto" data-toggle="tooltip" data-placement="top" title="ver proyecto"><i class="fa fa-plus mt-2 ml-1 fa-lg"></i></a>
                </td>
            </tr>
    		@endforeach
        </tbody>
    </table>
</div>
<div class="group form-row" style=margin-top:55px;></div>

<h3 class="text-center">Estudiantes con Proyecto Terminado</h3>
<div class="row">
<div class="col-md-6">
       <label class="sr-only" for="search_estudent">Estudiante</label>
       <div class="md-form input-group mb-3">
           <input type="text" class="form-control pl-0 rounded-0" id="search_estudent2" placeholder="Buscar estudiante...">
       </div>
   </div>
   </div>
<div class="tablaScroll5">
    <table class="table table-striped table-sm tablaScroll5">
        <thead>
            <tr>
                <th style="width: 10%;" class="text-center">CI</th>
                <th style="width: 15%;" >Apellidos</th>
                <th style="width: 15%;" >Nombre</th>
                <th style="width: 25%;" >Email</th>
                <th style="width: 10%;" >Telefono</th>
                <th style="width: 15%;" >Carrera</th>
                <th style="width: 10%;" class="text-center">Ver</th>
            </tr>
        </thead>
        <tbody class="tabla2">
            @foreach($estudiantes_t as $estudiante)
            <tr data-id="{{ $estudiante->idEstudiante }}">
                <td style="width: 10%;" class="text-center">{{ $estudiante->ciEst }}</td>
                <td style="width: 15%;" >{{ $estudiante->apellidoEst }}</td>
                <td style="width: 15%;" >{{ $estudiante->nombreEst }}</td>
                <td style="width: 25%;" >{{ $estudiante->emailEst }}</td>
                <td style="width: 10%;" >{{ $estudiante->telefono }}</td>

                

                <td style="width: 15%;" >{{ $estudiante->carrera->nombreCarrera}}</td>
                <td style="width: 10%;" class="text-center">
                    <a class="btn-floating btn-sm btn-mdb-color btn-modal-show" data-toggle="tooltip" data-placement="top" title="ver"><i class="fa fa-eye mt-2 ml-1 fa-lg"></i></a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>


<!-- Modal agregar y modificar estudiante -->
<div class="modal fade" id="modal-estudiante" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg" role="document">
       <!--Content-->
       <div class="modal-content">
           <!--Header-->
           <div class="modal-header">
               <p class="heading lead">Nuevo Estudiante</p>
              
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true" class="white-text">&times;</span>
               </button>
            </div>
           <!--Body-->
           <div class="modal-body">
               <!-- Grid row -->
               <div class="form-row">
                   <!-- Grid column -->
                   <div class="col-md-12">
                       <!-- Material input -->
                       <div class="md-form form-group">
                           <input type="text" class="form-control validate" id="nombre" placeholder="Nombre">
                           <label for="nombre">Nombre:</label>
                       </div>
                   </div>
                   <!-- Grid column -->

                   <!-- Grid column -->
                   <div class="col-md-12">
                       <!-- Material input -->
                       <div class="md-form form-group">
                           <input type="text" class="form-control validate" id="apellidos" placeholder="Apellidos">
                           <label for="apellidos">Apellidos:</label>
                       </div>
                   </div>
                   <!-- Grid column -->
               </div>
               <!-- Grid row -->

               <!-- Grid row -->
               <div class="row">
                   <!-- Grid column -->
                   <div class="col-md-6">
                       <!-- Material input -->
                       <div class="md-form form-group">
                           <input type="text" class="form-control validate" id="ci" placeholder="CI">
                           <label for="ci">CI:</label>
                       </div>
                   </div>
                   <!-- Grid column -->

                   <!-- Grid column -->
                   <div class="col-md-6">
                       <!-- Material input -->
                       <div class="md-form form-group">
                            <input type="number" class="form-control validate" id="telefono" placeholder="Telefono">
                            <label for="telefono">Telefono:</label>
                       </div>
                   </div>
                   <!-- Grid column -->
               </div>
               <!-- Grid row -->

               <!-- Grid row -->
               <div class="form-row">
                   <!-- Grid column -->
                   <div class="col-md-6">
                       <!-- Material input -->
                       <div class="md-form form-group">
                           <input type="email" class="form-control validate" id="email" placeholder="Email">
                           <label for="email">Email</label>
                       </div>
                   </div>
                   <!-- Grid column -->

                   <!-- Grid column -->
                   <div class="col-md-6">
                       <!-- Material input -->
                       <div class="md-form form-group" id="carreradiv">
                            <select class="mdb-select colorful-select dropdown-primary col-md-12" id="carrera">
                               <option value="" selected disabled>Seleccionar una opcion</option>
                               <option value="1">Ingenieria en Sistemas</option>
                               <option value="2">Ingenieria Informatica</option>
                           </select>
                           <label for="carrera">Carrera:</label>
                       </div>
                   </div>
                   <!-- Grid column -->
               </div>
               <!-- Grid row -->               
           </div>
          
           <!--Footer-->
           <div class="modal-footer">
               <button class="btn btn-danger" data-dismiss="modal">Cerrar</button>
               <button class="btn btn-indigo" id="modal-agregar-btn">Guardar</button>
           </div>
       </div>
       <!--/.Content-->
   </div>
</div>
<!-- Modal agregar y modificar estudiante -->

<!-- Modal show estudiante -->
<div class="modal fade" id="modal-show" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-notify modal-info modal-lg" role="document">
       <!--Content-->
       <div class="modal-content">
           <!--Header-->
           <div class="modal-header">
               <p class="heading lead">Estudiante</p>
              
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true" class="white-text">&times;</span>
               </button>
           </div>
          
           <!--Body-->
           <div class="modal-body">
               <!-- Grid row -->
               <div class="form-row">
                   <!-- Grid column -->
                   <div class="col-md-12">
                       <table class="table table-bordered">
                           <tbody>
                               <tr>
                                   <th scope="row">Titulo</th>
                                   <td id="td-titulo"></td>
                               </tr>
                               <tr>
                                   <th scope="row">Tutores</th>
                                   <td id="td-tutores"></td>
                               </tr>
                               <tr>
                                   <th scope="row">Tribunales</th>
                                   <td id="td-tribunales"></td>
                               </tr>
                               <tr>
                                   <th scope="row">CI</th>
                                   <td id="td-ci"></td>
                               </tr>
                               <tr>
                                   <th scope="row">Apellidos</th>
                                   <td id="td-apellido"></td>
                               </tr>
                               <tr>
                                   <th scope="row">Nombre</th>
                                   <td id="td-nombre"></td>
                               </tr>
                               <tr>
                                   <th scope="row">Email</th>
                                   <td id="td-email"></td>
                               </tr>
                               <tr>
                                   <th scope="row">Telefono</th>
                                   <td id="td-telefono"></td>
                               </tr>
                               <tr>
                                   <th scope="row">Carrera</th>
                                   <td id="td-carrera"></td>
                               </tr>
                           </tbody>
                       </table>
                   </div>
                   <!-- Grid column -->
               </div>
               <!-- Grid row -->             
           </div>
           <!--Footer-->
           <div class="modal-footer">
               <button class="btn btn-danger" data-dismiss="modal">Cerrar</button>
           </div>
       </div>
       <!--/.Content-->
   </div>
</div>
<!-- Modal show estudiante -->

<!-- Modal delete estudiante -->
<div class="modal fade" id="modal-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-notify modal-danger modal-sm" role="document">
       <!--Content-->
       <div class="modal-content">
           <!--Header-->
           <div class="modal-header">
               <p class="heading lead">Eliminar Estudiante</p>
              
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true" class="white-text">&times;</span>
               </button>
           </div>
           <!--Body-->
           <div class="modal-body">
               <div class="text-center">
                   <i class="fa fa-times fa-4x mb-3 animated rotateIn"></i>
                   <p>Se eliminará al estudiante:</p>
                   <b id="delete-estudiante"></b>
               </div>
           </div>
           <!--Footer-->
           <div class="modal-footer justify-content-center">
               <button class="btn btn-danger" id="modal-delete-btn" data-dismiss="modal">Eliminar</button>
           </div>
       </div
>        <!--/.Content-->
   </div>
</div>
@endsection
@section('script')
<script>
   var row_tr = null;
   var type_ = null;
   var url_ = null;
   // SCRIPT PARA MOSTRAR ESTUDIANTE EN EL MODAL
   $(document).on('click', '.btn-modal-show', function() {
       $.get('/estudiante/'+$($(this).parents("tr")).data('id'), function(data){
           $('#td-titulo').text(data.titulo.titulo);
           var aux2 = "";
            data.tutores.forEach( function(valor, indice)
            {
                aux2 = aux2 + (indice+1) + ". " + valor.apePaternoDoc + " " + valor.apeMaternoDoc + " " + valor.nombreDoc + '<br>';
            });            
           $('#td-tutores').empty();
           $('#td-tutores').append(aux2);
            var aux = "";
            data.tribunales.forEach( function(valor, indice)
            {
                aux = aux + (indice+1) + ". " + valor.apePaternoDoc + " " + valor.apeMaternoDoc + " " + valor.nombreDoc + '<br>';
            });
           $('#td-tribunales').empty();
           $('#td-tribunales').append(aux);
           
           $('#td-ci').text(data.estudiante.ciEst);
           //console.log(data.tribunales);
           $('#td-apellido').text(data.estudiante.apellidoEst);
           $('#td-nombre').text(data.estudiante.nombreEst);
           $('#td-email').text(data.estudiante.emailEst);
           $('#td-telefono').text(data.estudiante.telefono);
           if(data.estudiante.idCarrera=='1')
           $('#td-carrera').text("Ingenieria Informatica");
            else $('#td-carrera').text("Ingenieria de Sistemas");
       });
       $('#modal-show').modal('show');
   });
   // SCRIPT PARA MOSTRAR ESTUDIANTE EN EL MODAL

   // SCRIPT PARA AGREGAR ESTUDIANTE EN EL MODAL
   $(document).on('click', '#btn-modal-add', function(e) {
       type_ = 'POST';
       url_ = '/estudiante';
       $('#ci').val('');
       $('#nombre').val('');
       $('#apellidos').val('');
       $('#email').val('');
       $('#telefono').val('');
       $('#carreradiv').removeAttr('hidden');
   });
   // SCRIPT PARA AGREGAR ESTUDIANTE EN EL MODAL
   $(document).on('click', '#modal-agregar-btn', function(e) {
       e.preventDefault();
       $.ajax({
           type: type_,
           url: url_,
           data: {
               '_token': $('input[name=_token]').val(),
               'ciEst': $('#ci').val(),
               'nombreEst': $('#nombre').val(),
               'apellidoEst': $('#apellidos').val(),
               'emailEst': $('#email').val(),
               'telefono': $('#telefono').val(),
               'idCarrera': $('#carrera').val(),
           },
           success : function(data) {
              //console.log(data);
               toastr.success(data.message);
               location.reload();
           },
           error : function(xhr, status) {
               toastr.error('Disculpe, existio un problema!');
           },
       });
       $('#modal-estudiante').modal('hide');
       clear();
   });

   // SCRIPT PARA EDITAR ESTUDIANTE EN EL MODAL
   $(document).on('click', '.btn-modal-edit', function() {
       $.get('/estudiante/'+$($(this).parents("tr")).data('id'), function(data){
           $('#ci').val(data.estudiante.ciEst);
           $('#nombre').val(data.estudiante.nombreEst);
           $('#apellidos').val(data.estudiante.apellidoEst);
           $('#email').val(data.estudiante.emailEst);
           $('#telefono').val(data.estudiante.telefono);
           console.log($('#carrera')[0][1]);
           $($('#carrera')[0][0]).removeAttr('selected');
           if (data.estudiante.idCarrera == 1) {
               $($('#carrera')[0][1]).attr('selected','');
           }
           else{
               $($('#carrera')[0][2]).attr('selected','');
           }
           // $('#carrera').val(data.estudiante.idCarrera);
       });
       type_ = 'PUT';
       url_ = '/estudiante/'+$($(this).parents("tr")).data('id');
       $('#carreradiv').attr('hidden', 'hidden');

       $('#modal-estudiante').modal('show');
   });

   // SCRIPT PARA ELIMINAR ESTUDIANTE EN EL MODAL
   $(document).on('click', '.btn-modal-delete', function() {
       var nombre = $(this).parents("tr").find("td")[2].innerHTML;
       var apellido = $(this).parents("tr").find("td")[1].innerHTML;
       $('#delete-estudiante').text(nombre + ' ' + apellido);
       row_tr = $($(this).parents("tr"));
       type_ = 'DELETE';
       url_ = '/estudiante/'+$($(this).parents("tr")).data('id');
       $('#modal-delete').modal('show');
   });
   $(document).on('click', '#modal-delete-btn', function(e) {
       e.preventDefault();
       $.ajax({
           type: type_,
           url: url_,
           data: {
               '_token': $('input[name=_token]').val(),
           },
           success : function(data) {
              //console.log(data);

               row_tr.remove();
               toastr.success(data.message);
           },
       });
       clear();
   });
   // SCRIPT PARA ELIMINAR ESTUDIANTE EN EL MODAL
   function clear(){
       row_tr = null;
       type_ = null;
       url_ = null;
   }
   $(document).ready(function(){
         $("#search_estudent").on("keyup", function() {
           var value = $(this).val().toLowerCase();
           $(".tabla1 tr").filter(function() {
             $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
           });
         });
       });
       $(document).ready(function(){
         $("#search_estudent2").on("keyup", function() {
           var value = $(this).val().toLowerCase();
           $(".tabla2 tr").filter(function() {
             $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
           });
         });
       });
</script>
@endsection
