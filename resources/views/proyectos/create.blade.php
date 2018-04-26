@extends('layouts.app')

			

@section('content')
    
    <h1 align="center">NUEVO PROYECTO</h1>

	<form>



    <!-- Grid row -->
    <div class="form-row">
        <!-- Grid column -->
        <div class="col-md-12">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label>Nombre del Proyecto</label>
            </div>
        </div>
        <!-- Grid column -->

    </div>   
    
    <!-- Grid row -->

    
                        <div>
							<label class="control-label">Area Proyecto: </label>
				
							<select class="mdb-select colorful-select dropdown-primary col-md-12" name="area">
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
						
                    <div>
						<label class="control-label">Subarea Proyecto: </label>
						
							<select class="mdb-select colorful-select dropdown-primary col-md-12" name="subarea">
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

    <!-- Grid row -->
    <div class="form-row">
        
    	<div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Fecha: </label>
            </div>
        </div>

        <div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Sesion de consejo</label>
            </div>
        </div>

  </div>

	<div class="form-row">
        
    	<div class="col-md-4">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >SISS: </label>
            </div>
        </div>

        <div class="col-md-8">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" placeholder="Autocompletado">
                <label >Nombre estudiante</label>
            </div>
        </div>

  </div>  
  <!-- Grid row -->

      <div class="form-row">
        <!-- Grid column -->
        <div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="email" class="form-control" placeholder="Autocompletado" >
                <label >Email</label>
            </div>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" placeholder="Autocompletado">
                <label >CI: </label>
            </div>
        </div>

        <div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" placeholder="Autocompletado">
                <label >Numero: </label>
            </div>
        </div>
        <!-- Grid column -->
    </div>

    					<label class="control-label">Tutor: </label>
						
							<select class="mdb-select colorful-select dropdown-primary col-md-12" name="subarea">
								<option value="">Tutores registrados</option>
							</select>


    <button type="submit" class="btn blue-gradient btn-rounded">GUARDAR</button>
    <button type="submit" class="btn blue-gradient btn-rounded">CANCELAR</button>



</form>
	

						
						


@endsection