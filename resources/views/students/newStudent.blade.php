@extends('layouts.app')

@section('content')

    
    <h1 align="center">REGISTRO ESTUDIANTE</h1>

	<form>


     <!-- Grid row -->
    <div class="form-row">
        
        <div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Nombre: </label>
            </div>
        </div>

        <div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Apellido: </label>
            </div>
        </div>

  </div>
       
    
     <div class="form-row">
        
        <div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >SISS: </label>
            </div>
        </div> 

         <div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >CI: </label>
            </div>
        </div> 

        <!-- Grid column -->
        <div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="email" class="form-control" >
                <label >Email</label>
            </div>
        </div>      

    </div>
    <!-- Grid row -->

    
                        <div>
							<label class="control-label">Carrera: </label>
				
							<select class="mdb-select colorful-select dropdown-primary col-md-12" name="carrera">
								<option value="">Ingenieria en Sistemas</option>
								<option value="">Ingenieria Informatica</option>
								
							</select>
				        </div>

   


      <div class="form-row">

        <div class="col-md-2">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Numero Cel.: </label>
            </div>
        </div>

        <div class="col-md-2">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Numero Telf.: </label>
            </div>
        </div>

         <div class="col-md-8">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Direccion: </label>
            </div>
        </div>
        <!-- Grid column -->
    </div>




    <button type="submit" class="btn  btn-primary btn-md">GUARDAR</button>
    <button type="submit" class="btn  btn-info btn-md">CANCELAR</button>


</form>

@endsection