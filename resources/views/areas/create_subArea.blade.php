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
    <div class="form-group row">
        <div class="col-sm-15">
        <button type="submit" class="btn blue-gradient btn-rounded">CANCELAR</button>
        </div>
        <div class="col-sm-5">
        <button type="submit" class="btn blue-gradient btn-rounded">GUARDAR</button>
        </div>
    </div>
    <!-- Grid row -->
</form>
<!-- Horizontal material form -->
@endsection