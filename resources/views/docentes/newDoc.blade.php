@extends('layouts.app')

			

@section('content')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <h1 align="center">REGISTRO DOCENTE/PROFESIONAL</h1>

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
       
    
    <!-- Grid row -->

    
                        <div>
							<label class="control-label">Carrera: </label>
				
							<select class="mdb-select colorful-select dropdown-primary col-md-12" name="carrera">
								<option value="">Ingenieria en Sistemas</option>
								<option value="">Ingenieria Informatica</option>
								
							</select>
				        </div>
						
                        <div>
						      <label class="control-label">Tipo: </label>
						
							<select class="mdb-select colorful-select dropdown-primary col-md-12" name="tipo">
								<option value="">Docente</option>
								<option value="">Profesional</option>
							</select>
						</div>

   


      <div class="form-row">
        <!-- Grid column -->
        <div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="email" class="form-control" >
                <label >Email</label>
            </div>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >CI: </label>
            </div>
        </div>

        <div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Numero: </label>
            </div>
        </div>
        <!-- Grid column -->
    </div>

    	           <label>Area: </label>
                    <div class="form-row">
                        

                        
                            <div class="col-md-12">
                            <select class="mdb-select colorful-select dropdown-primary col-md-12" multiple name="area" id="select">
                                <option value="">Base de Datos</option>
                                <option value="">Comercio Electrónico</option>
                                <option value="">Computación Gráfica
                                <option value="">Evaluación y Auditoria de Sistemas
                                <option value="">Ingeniería de Producción
                                <option value="">Ingeniería de Software
                                <option value="">Inteligencia Artificial
                                <option value="">Interacción Humano Computador
                                <option value="">Investigación Operativa
                                <option value="">Matemática Computacional
                                <option value="">Programación en Internet
                                <option value="">Redes y Sistemas Distribuidos
                                <option value="">Simulación
                                <option value="">Sistemas de Información
                                <option value="">Tecnologías de Control
                                <option value="">Teoría de la Computación
                            </select>
                            </div>

                            <!--<div class="col-md-6">
                                <input class="form-control" id="Search1" type="text" placeholder="Search..">    
                            </div> -->
                    </div>  



    <button type="submit" class="btn  btn-primary btn-md">GUARDAR</button>
    <button type="submit" class="btn  btn-info btn-md">CANCELAR</button>


</form>

<script>
        $(document).ready(function(){
          $("#Search1").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#select").filter(function() {
              $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
          });
        });
    </script>

						
						


@endsection