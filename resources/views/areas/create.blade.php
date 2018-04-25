@extends('layouts.app')


@section('content')
<!-- Horizontal material form -->
<form>
    <!-- Grid row -->
    <div class="form-group row">
        <!-- Material input -->
        <label for="inputEmail3MD" class="col-sm-2 col-form-label">Nombre:</label>
        <div class="col-sm-10">
            <div class="md-form mt-0">
                <input type="text" class="form-control" id="inputEmail3MD" placeholder="Nombre">
            </div>
        </div>
    </div>
    <!-- Grid row -->

    <!-- Grid row -->
    <div class="form-group row">
        <!-- Material input -->
        <label for="inputPassword3MD" class="col-sm-2 col-form-label">Password</label>
        <div class="col-sm-10">
            <div class="md-form mt-0">
              <input type="password" class="form-control" id="inputPassword3MD" placeholder="Password">
            </div>
        </div>
    </div>
    <!-- Grid row -->

    <!-- Grid row -->
    <div class="form-group row">
        <div class="col-sm-10">
            <button type="submit" class="btn btn-primary btn-md">Sign in</button>
        </div>
    </div>
    <!-- Grid row -->
</form>
<!-- Horizontal material form -->
@endsection