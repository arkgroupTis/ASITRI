@extends('layouts.app')


@section('content')
{{ csrf_field() }}
<!-- Horizontal material form -->
<form id="miForm">
   <!-- Grid row -->
   <h1 class="text-center">Nueva Area \ Sub Area</h1>
   <div class="group form-row" style=margin-top:50px;></div>
   </div>
   <p class="red-text">*Obligatorio</p>
   <div class="form-group row">
   <label for="nombre" class="col-sm-2 col-form-label">Clasificacion <b class="h5 red-text">*</b></label>
     	     <div class="col-sm-10" >
     	       <select class="mdb-select colorful-select dropdown-primary md-form mt-0" name="clasificacion" id="clasificacion">
         	   <option value="area">Area</option>
                <option value="subarea">Sub Area</option>
            </select>
        </div>
   </div>   
  
   <div class="form-group row">
       <!-- Material input -->
       <label for="nombre" class="col-sm-2 col-form-label">Nombre <b class="h5 red-text">*</b></label>
       <div class="col-sm-10">
           <div class="md-form mt-0">
               <input type="text" class="form-control" id="nombre" placeholder="Nombre">
           </div>
       </div>
   </div>
   <!-- Grid row -->

   <!-- Grid row -->
   <div class="form-group row">
       <!-- Material input -->
       <label for="descripcion" class="col-sm-2 col-form-label">Descripcion <b class="h5 red-text">*</b></label>
       <div class="col-sm-10">
           <div class="md-form mt-0">
             <textarea type="text" id="descripcion" class="form-control md-textarea" rows="3" placeholder="Descripcion"></textarea>
           </div>
       </div>
   </div>
           <!-- <button type="reset" class="btn btn-danger btn-md">Cancelar</button> -->
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
   <!-- Grid row -->
</form>
<!-- Horizontal material form -->
@endsection
@section('script')
<script>
   $(document).on('click', '#add', function(e) {
       e.preventDefault();
       $.ajax({
           type: 'POST',
           url: '/areas',
           data: {
               '_token': $('input[name=_token]').val(),
               'nombreArea': $('#nombre').val(),
               'descripcionArea': $('#descripcion').val(),
               'clasificacion': $('#clasificacion').val(),
           },
           success : function(data) {
               toastr.success(data.message);
               console.log(data);
               location.reload();
           },
           error : function(xhr, status) {
               toastr.error('Disculpe, existio un problema!');
           },
       });
       clear();
   });
   function clear() {
   document.getElementById("miForm").reset();
 }
</script>
@endsection
