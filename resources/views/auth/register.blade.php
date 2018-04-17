<!DOCTYPE html>
<html lang="en">

<head>
    @include('layouts.htmlheader')
</head>

<body class="grey lighten-3">
    
    <br>
    <br>
    <br>
    <!--Grid row-->
    <div class="row wow fadeIn">
        <div class="col-md"></div>
        <!--Grid column-->
        <div class="col-md-6 col-xl-5 mb-4 col-md-offset-3">
            <!--Card-->
            <div class="card">
                <!--Card content-->
                <div class="card-body">
                    <!-- Form -->
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/register') }}">
                        {{ csrf_field() }}
                        <!-- Heading -->
                        <h3 class="dark-grey-text text-center">
                        <strong>Registrarse:</strong>
                        </h3>
                        <hr>
                        <div class="md-form {{ $errors->has('name') ? 'has-error' : '' }}">
                            <i class="fa fa-user prefix grey-text"></i>
                            <input type="text" id="name" class="form-control" name="name">
                            <label for="name">Nombre</label>
                            @if ($errors->has('name'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('name') }}</strong>
                                </span>
                            @endif
                        </div>
                        <div class="md-form {{ $errors->has('email') ? 'has-error' : '' }}">
                            <i class="fa fa-envelope prefix grey-text"></i>
                            <input type="text" id="email" class="form-control" name="email">
                            <label for="email">Correo electronico</label>
                            @if ($errors->has('email'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('email') }}</strong>
                                </span>
                            @endif
                        </div>
                        <div class="md-form {{ $errors->has('password') ? 'has-error' : '' }}">
                            <i class="fa fa-lock prefix grey-text"></i>
                            <input type="password" id="password" class="form-control" name="password">
                            <label for="password">Contraseña</label>
                            @if ($errors->has('password'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                            @endif
                        </div>
                        <div class="md-form {{ $errors->has('password_confirmation') ? 'has-error' : '' }}">
                            <i class="fa fa-lock prefix grey-text"></i>
                            <input type="password" id="password-confirm" class="form-control" name="password_confirmation">
                            <label for="password-confirm">Repetir contraseña</label>
                            @if ($errors->has('password_confirmation'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('password_confirmation') }}</strong>
                                </span>
                            @endif
                        </div>
                        <div class="text-center">
                            <button class="btn btn-indigo">Registrarse</button>
                            <hr>
                        </div>
                    </form>
                    <!-- Form -->
                </div>
            </div>
            <!--/.Card-->
        </div>
        <!--Grid column-->
        <div class="col-md"></div>
    </div>
    <!--Grid row-->

    <!-- SCRIPTS -->
    @include('layouts.scripts')

</body>

</html>
