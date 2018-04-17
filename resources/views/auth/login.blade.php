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
    <div class="row wow fadeIn aling-items-center">
        <div class="col"></div>
        <!--Grid column-->
        <div class="col-md-5 mb-4 text-center text-md-left">
            <!--Card-->
            <div class="card">
                <div class="card-body">
                    <!-- Form -->
                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/login') }}">
                        {{ csrf_field() }}
                        <!--Header-->
                        <div class="text-center cyan-text">
                            <h3>
                                <i class="fa fa-lock cyan-text"></i> Login:</h3>
                            <hr class="my-4">
                        </div>

                        <!--Body-->
                        <div class="md-form">
                            <i class="fa fa-envelope prefix grey-text"></i>
                            <input type="email" id="email" class="form-control validate" name="email">
                            <label for="email">Your email</label>
                        </div>

                        <div class="md-form">
                            <i class="fa fa-lock prefix grey-text"></i>
                            <input type="password" id="password" class="form-control validate" name="password">
                            <label for="password">Your password</label>
                        </div>

                        <div class="text-center">
                            <button class="btn btn-info waves-effect waves-light">Login</button>
                        </div>
                    </form>
                    <!-- Form -->
                </div>

                <!--Footer-->
                <div class="modal-footer">
                    <div class="footer-copyright py-3">
                        © 2018 Copyright:
                        <a href="#"> ArkGroup.com </a>
                    </div>
                </div>
            </div>
            <!--/.Card-->

        </div>
        <!--Grid column-->
        <div class="col"></div>



    </div>
    <!--Grid row-->

    <!-- SCRIPTS -->
    @include('layouts.scripts')

</body>

</html>