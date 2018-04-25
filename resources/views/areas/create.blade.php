@extends('layouts.app')


@section('content')
<!-- Horizontal material form -->
<form>
    <!-- Grid row -->
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
    <!-- Grid row -->
    <!-- Grid row -->
    <div class="form-group row">
        <!--Blue select-->
        <select class="mdb-select colorful-select dropdown-primary">
            <option value="1">Option 1</option>
            <option value="2">Option 2</option>
            <option value="3">Option 3</option>
            <option value="4">Option 4</option>
            <option value="5">Option 5</option>
        </select>
        <label>Blue select</label>
        <!--/Blue select-->
    </div>
    <!-- Grid row -->
    <div class="form-group row">
        <div class="col-sm-15">
            <button type="reset" class="btn btn-danger btn-md">Cancelar</button>
        </div>
        <div class="col-sm-5">
            <button type="submit" class="btn btn-primary btn-md">Guardar</button>
        </div>
    </div>
    <!-- Grid row -->
</form>
<!-- Horizontal material form -->
@endsection