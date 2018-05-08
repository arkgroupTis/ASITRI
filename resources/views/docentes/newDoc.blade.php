@extends('layouts.app')

@section('content')
{{ csrf_field() }}
    <h1 align="center">REGISTRO DOCENTE/PROFESIONAL</h1>

	<form id="miForm">


     <!-- Grid row -->
    <div class="form-row">
        
        <div class="col-md-4">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" id="name">
                <label >Nombre: </label>
            </div>
        </div>

        <div class="col-md-4">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" id="apePaterno">
                <label >Apellido Paterno: </label>
            </div>
        </div>
        <div class="col-md-4">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" id="apMaterno">
                <label >Apellido Materno: </label>
            </div>
        </div>

  </div>
    <div class="row">
        <div class="col-md-">
		      <label class="control-label">Tipo: </label>
			     <select class="mdb-select colorful-select dropdown-primary col-md-12" name="tipo" id="tipo">
			    <option value="Docente">Docente</option>
				<option value="Profesional">Profesional</option>
			</select>
		</div>
        <div class="col-md-4">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" id="carga">
                <label >*Carga Horaria: </label>
            </div>
        </div>
        <div class="col-md-4">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" id="codigoDoc">
                <label >*Codigo Docente: </label>
            </div>
        </div>
    </div>
      <div class="form-row">
        <!-- Grid column -->
        <div class="col-md-6">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="email" class="form-control" id="email">
                <label >Email</label>
            </div>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" id="ci">
                <label >CI: </label>
            </div>
        </div>

        <div class="col-md-3">
            <!-- Material input -->
            <div class="md-form form-group">
                <input type="text" class="form-control" id="telefono">
                <label >Telefono/Celular: </label>
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



    <button class="btn  btn-primary btn-md" id="add">GUARDAR</button>
    <button class="btn  btn-info btn-md">CANCELAR</button>


</form>
@endsection
@section('script')
<script>
    $(document).on('click', '#add', function(e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '/docentes',
            data: {
                '_token': $('input[name=_token]').val(),
                'ciDoc': $('#ci').val(),
                'nombreDoc': $('#name').val(),
                'apePaternoDoc': $('#apePaterno').val(),
                'apeMaternoDoc': $('#apMaterno').val(),
                'emailDoc': $('#email').val(),
                'telefonoDoc': $('#telefono').val(),
                'tituloDoc': $('#tipo').val(),
                'cargaHoraria': $('#carga').val(),
                'codigoDoc': $('#codigoDoc').val(),
            },
            success : function(data) {
                toastr.success(data.message);
                lacation.reload();
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