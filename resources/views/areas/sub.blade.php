@extends('layouts.app')


@section('content')
{{ csrf_field() }}
<!-- Horizontal material form -->
<form id="miForm">
    <!-- Grid row -->
    <h1>Nueva Sub-Area</h1>
    <div class="form-group row">
        <!-- Material input -->
        <label for="nombre" class="col-sm-2 col-form-label">Nombre:</label>
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
        <label for="descripcion" class="col-sm-2 col-form-label">Descripcion:</label>
        <div class="col-sm-10">
            <div class="md-form mt-0">
              <textarea type="text" id="descripcion" class="form-control md-textarea" rows="3" placeholder="Descripcion"></textarea>
            </div>
        </div>
    </div>
    <div class="col-md-">
        <label class="control-label">Area Principal: </label>
        <select class="mdb-select colorful-select dropdown-primary col-md-12" name="tipo" id="codigo">
            @foreach($areas as $area)
            <option value= {{ $area-> idArea}} > {{ $area-> nombreArea}} </option>
            @endforeach
        </select>
    </div>
            <button type="reset" class="btn btn-danger btn-md">Cancelar</button>
            <button class="btn  btn-primary btn-md" id="add">GUARDAR</button>
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
            url: '/areasCatalogo',
            data: {
                '_token': $('input[name=_token]').val(),
                'nombreArea': $('#nombre').val(),
                'descripcionArea': $('#descripcion').val(),
                'cod_subarea': $('#codigo').val(),
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