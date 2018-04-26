@extends('layouts.app')
@section('content')
<form>
  <div class="form-row">
  </div>
  <div class="form-group">
    <label for="inputName">Nombre</label>
    <input type="text" class="form-control" id="nombreDocente">
  </div>
  <div class="form-group">
    <label for="inputName">Fecha</label>
    <input type="" class="form-control" id="nombreDocente">
  </div>
  <div class="col-md-6">
    
    <div>
        <!--Blue select-->
        <select class="mdb-select colorful-select dropdown-primary">
            <option value="1">Option 1</option>
            <option value="2">Option 2</option>
            <option value="3">Option 3</option>
            <option value="4">Option 4</option>
            <option value="5">Otros</option>
        </select>
        <label for="inputMotivo">Motivo de Renuncia</label>
        <!--/Blue select-->
      </div>
  </div>
    <textarea rows="10" cols="100"></textarea>
  
  
  <div class="form-row">
  <button type="submit" class="btn aqua-gradient btn-rounded">Cancelar</button>
  <button type="submit" class="btn aqua-gradient btn-rounded">Aceptar</button>
  </div>
</form>
@endsection