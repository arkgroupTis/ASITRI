@extends('DocLayouts.layoutRen')
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
  <div class="form-group">
    <label for="inputMotivo">Motivo de Renuncia</label>
  </div>
    <textarea rows="10" cols="100"></textarea>
  
  
  <div class="form-row">
  <button type="submit" class="btn btn-primary">Cancelar</button>
  <button type="submit" class="btn btn-primary">Retirar</button>
  </div>
</form>
@endsection