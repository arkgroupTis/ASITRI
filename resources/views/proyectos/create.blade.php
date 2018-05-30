@extends('layouts.app')

            

@section('content')
  
   <h1 align="center">NUEVO PROYECTO</h1>

    <form action="{{url('/proyectos')}}" method="POST" id="miForm">
       {{csrf_field()}}


   <!-- Grid row -->
   <div class="form-row">
       <!-- Grid column -->
       <div class="col-md-12">
           <!-- Material input -->
           <div class="md-form form-group">
               <input type="text" class="form-control" id="nombreProy" required name="titulo">
               <label>Nombre del Proyecto</label>
           </div>
       </div>
       <!-- Grid column -->

   </div>  
  
   <!-- Grid row -->
  
   <div class="row">
       <label class="col-sm-6 col-form-label">Area Proyecto: </label>
       <label class="col-sm-6 col-form-label">Subarea Proyecto: </label>
       <div class="col-md-6">
            <select class="mdb-select colorful-select dropdown-primary" multiple name="area[]" id="area" required>
                <option active disabled>Seleccionar una Area</option>
                @foreach(($res[2]) as $area)
                       <option value="{{ $area-> idArea}}"> {{ $area-> nombreArea}}</option>
               @endforeach
            </select>
       </div>
       <div class="col-md-6">
           <select class="mdb-select colorful-select dropdown-primary" multiple name="subarea[]" id="subarea" required>
               <option active disabled>Seleccionar una Subarea</option>
               @foreach(($res[4]) as $subarea)
                       <option value="{{ $subarea-> idArea}}"> {{ $subarea-> nombreArea}}</option>
               @endforeach
           </select>
       </div>

       <!--<div class='col-md-4'>
           <input placeholder="Fecha Inicio del Proyecto" type="text" name="fechaIni" class="form-control datepicker">
       </div>
       <div class='col-md-4'>
           <input placeholder="Fecha Fin del Proyecto" type="text" name="fechaFin" class="form-control datepicker">
       </div>-->         
   </div>
   <!-- Grid row -->
   <div class="row">
       <!-- Material input -->
       <label class="col-sm-6 col-form-label">Objetivos:</label>
       <label class="col-sm-6 col-form-label">Descripcion:</label>
       <div class="col-sm-6">
           <div class="md-form mt-0">
             <textarea type="text" id="objetivos" class="form-control md-textarea" rows="2" required name="objetivos"></textarea>
           </div>
       </div>
       <!-- Material input -->
       <div class="col-sm-6">
           <div class="md-form mt-0">
             <textarea type="text" id="descripcion" class="form-control md-textarea" rows="2" required name="descripcion"></textarea>
           </div>
       </div>
   </div>
   <!--<div class="form-row">
       <label class="col-md-3">Fecha registro del proyecto:</label>
       <input placeholder="Fecha Registro del Proyecto" type="text" name="fechaRegistro" class="form-control datepicker col-sm-6">
   </div>-->
   <div class="form-row">
      

       <div class="col-md-3">
           <!-- Material input -->
           <div class="md-form form-group">
               <input type="text" class="form-control" id="periodo" name="periodo">
               <label >Periodo: </label>
           </div>
       </div>

       <div class="col-md-3">
           <!-- Material input -->
           <div class="md-form form-group">
               <input type="text" class="form-control" id="sesion" name="sesionDeConsejo">
               <label >Sesion de consejo</label>
           </div>
       </div>
       <label class="col-sm-2 col-form-label">Modalidad: </label>
       <div class="col-md-4">

           <select class="mdb-select colorful-select dropdown-primary col-md-12" id="modalidad" name="idModalidad">
               @foreach($res[3] as $modalidad)
               <option value="{{ $modalidad-> idModalidad}}"> {{ $modalidad-> nombreMod}} </option>
               @endforeach
           </select>
       </div>
 </div>
 <div class="group form-row" style=margin-top:60px;></div>
           <div class="form-row">
           <div class="col-md-8" ></div>
      
           <button type="reset" class="btn btn-red btn-rounded">
               <font color="white" size="3">CANCELAR</font>
            </button>
           <!-- <button class="btn  btn-primary btn-md" id="add">GUARDAR</button> -->
           <button class="btn btn-light-green btn-rounded" id="add">
               <font color="white" size="3">GUARDAR</font>
            </button>
           </div>
</form>
@endsection
@section('script')
<script>
   $(document).on('click', '#add', function(e) {
       e.preventDefault();
       $.ajax({
           type: 'POST',
           url: '/proyectos',
           data: {
               '_token': $('input[name=_token]').val(),
               'titulo': $('#nombreProy').val(),
               'area': $('#area').val(),
               'objetivos': $('#objetivos').val(),
               'descripcion': $('#descripcion').val(),
               'periodo': $('#periodo').val(),
               'sesionDeConsejo': $('#sesion').val(),
               'idModalidad': $('#modalidad').val(),
  
               'area': $('#area').val(),
               'subarea': $('#subarea').val(),

           },
           success : function(data) {
               toastr.success(data.message);
               clear();
               //console.log(data)
           },
           error : function(xhr, status) {
               toastr.error('Disculpe, existio un problema!');
           },
       });
   });
   function clear()
   {
       document.getElementById("miForm").reset();
   }
</script>

@endsection
