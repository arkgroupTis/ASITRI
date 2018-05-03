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
						
                    <!--<div>
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
					</div>-->	

    <!-- Grid row -->
    <div class="form-group row">
        <!-- Material input -->
        <label for="objetivos" class="col-sm-2 col-form-label">Objetivos:</label>
        <div class="col-sm-10">
            <div class="md-form mt-0">
              <textarea type="text" id="objetivos" class="form-control md-textarea" rows="2"></textarea>
            </div>
        </div>
    </div>

    <div class="form-group row">
        <!-- Material input -->
        <label for="descripcion" class="col-sm-2 col-form-label">Descripcion:</label>
        <div class="col-sm-10">
            <div class="md-form mt-0">
              <textarea type="text" id="descripcion" class="form-control md-textarea" rows="2"></textarea>
            </div>
        </div>
    </div>
    <div class="form-row">
        
    	<div class="col-md-4">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Periodo: </label>
            </div>
        </div>

        <div class="col-md-4">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control">
                <label >Sesion de consejo</label>
            </div>
        </div>

        <div class="col-md-4">
                            <label class="control-label">Modalidad: </label>
                
                            <select class="mdb-select colorful-select dropdown-primary col-md-12" name="area">
                                <option value="">Proyecto de grado</option>
                                <option value="">Tesis</option>
                                <option value="">Trabajo dirigido</option>
                            </select>
                        </div>
  </div>

	<!--<div class="form-row">
        <div class="col-md-6">
            <div>
                
                <div class="md-form form-group">
                    <input type="text" class="form-control" placeholder="Codigo SISS">
                    <label >SISS: </label>
                </div>
            </div>

            <div>
                
                <div class="md-form form-group">
                    <input type="text" class="form-control" placeholder="Autocompletado">
                    <label >Nombre estudiante</label>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div>
            
                <div class="md-form form-group">
                    <input type="text" class="form-control" placeholder="Codigo SISS">
                    <label >SISS: </label>
                </div>
            </div>

            <div>
                
                <div class="md-form form-group">
                    <input type="text" class="form-control" placeholder="Autocompletado">
                    <label >Nombre estudiante</label>
                </div>
            </div>
        </div>

  </div>-->
    <label class="control-label">Estudiante: </label>
    <div class="form-row">
        <div class="col-md-6" >
            
            <select class="mdb-select colorful-select dropdown-primary col-md-12" name="subarea">
                <option value=""></option>
                <option value="">Estudiantes registrados</option>
            </select>
        </div>
        <div class="col-md-6" >
            <select class="mdb-select colorful-select dropdown-primary col-md-12" name="subarea">
                <option value=""></option>
                <option value="">Estudiantes registrados</option>
            </select>
        </div>
    </div>

    <label class="control-label">Tutor: </label>
    <div class="form-row">
        <div class="col-md-6" >
            
            <select class="mdb-select colorful-select dropdown-primary col-md-12" name="subarea">
                <option value=""></option>
                <option value="">Tutores registrados</option>
            </select>
        </div>
        <div class="col-md-6" >
            <select class="mdb-select colorful-select dropdown-primary col-md-12" name="subarea">
                <option value=""></option>
                <option value="">Tutores registrados</option>
            </select>
        </div>
    </div>

    <input type="hidden" name="fecha">

    <div class="text-right">
        <button type="submit" class="btn blue-gradient btn-rounded">GUARDAR</button>
        <button type="submit" class="btn blue-gradient btn-rounded">CANCELAR</button>    
    </div>
    


</form>
	

						
						


@endsection