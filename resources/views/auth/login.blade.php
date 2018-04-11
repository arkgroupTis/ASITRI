<!DOCTYPE html>
<html lang="en">

<head>
    @include('layouts.htmlheader')
</head>

<body class="grey lighten-3">

    <!--Grid row-->
    <div class="row wow fadeIn aling-items-center">
        <div class="col-md"></div>
        <!--Grid column-->
        <div class="col-md-5 mb-4 text-center text-md-left">
            <!--Card-->
            <div class="card">
                <!--Card content-->
                <div class="card-body">
                    <!-- Form -->
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
                        <p class="h4 text-center mb-4">Sign in</p>
                        {{ csrf_field() }}
                        <!-- Material input email -->
                        <div class="md-form">
                            <i class="fa fa-envelope prefix grey-text"></i>
                            <input type="email" id="materialFormLoginEmailEx" class="form-control" name="email">
                            <label for="materialFormLoginEmailEx">Your email</label>
                        </div>

                        <!-- Material input password -->
                        <div class="md-form">
                            <i class="fa fa-lock prefix grey-text"></i>
                            <input type="password" id="materialFormLoginPasswordEx" class="form-control" name="password">
                            <label for="materialFormLoginPasswordEx">Your password</label>
                        </div>

                        <div class="text-center mt-4">
                            <button class="btn btn-default" type="submit">
                                <i class="fa fa-btn fa-sign-in"></i> Login
                            </button>
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