@extends('layouts.app')

			

@section('content')

	<form>



    <!-- Grid row -->
    <div class="form-row">
        <!-- Grid column -->
        <div class="col-md-12">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label for="inputEmail4MD">Nombre del Proyecto</label>
            </div>
        </div>
        <!-- Grid column -->

         
    </div>
    <!-- Grid row -->

    

							<label class="control-label">Area Proyecto: </label>
							<div class="">
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
						

						<label class="control-label">Subarea Proyecto: </label>
							<div class="">
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
						</div>

    <!-- Grid row -->
    <div class="form-row">
        <!-- Grid column -->
        <div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" id="inputCityMD" placeholder="New York City">
                <label for="inputCityMD">City</label>
            </div>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" id="inputZipMD" placeholder="11206-1117">
                <label for="inputZipMD">Zip</label>
            </div>
        </div>
        <!-- Grid column -->
  </div>
  <!-- Grid row -->
    <button type="submit" class="btn btn-primary btn-md">Sign in</button>
</form>
	

						
						


@endsection