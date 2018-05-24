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
        <label class="control-label col-md-4">Tipo: </label>
        <label class="control-label col-md-4">Carga Horaria: </label>
        <label class="col-md-4">Area: </label>
        <div class="col-md-4">
			     <select class="mdb-select colorful-select dropdown-primary" name="tipo" id="tipo">
				<option value="Licenciado">Licenciado</option>
                <option value="ingeniero">Ingeniero</option>
                <option value="Magister">Magister</option>
			</select>
		</div>
        <div class="col-md-4">
                 <select class="mdb-select colorful-select dropdown-primary" name="carga" id="carga">
                <option value="Tiempo Parcial">Tiempo Parcial</option>
                <option value="Tiempo Completo">Tiempo Completo</option>
            </select>
        </div>
        <div class="col-md-4">
            <select class="mdb-select colorful-select dropdown-primary" multiple name="area" id="select">
                <option disabled=""> Seleccione una o mas Areas</option>
                @foreach($areas as $area)
                <option value= {{ $area-> idArea}} > {{ $area-> nombreArea}} </option>
                @endforeach
            </select>
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
            },
            success : function(data) {
                toastr.success(data.message);
                
                clear();
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