<!DOCTYPE html>
<html>
    <head>
        <title>Laravel</title>
        <!-- <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
        <link href="{{ asset('css/mdb.min.css') }}" rel="stylesheet"> -->
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.0/css/mdb.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div class="content">
                <div class="row text-left">

                    <!--Grid column-->
                    <div class="col-md-6 mb-4 pb-5">

                        <div class="card">
                            <div class="card-body">

                                <!--Header-->
                                <div class="form-header default-color">
                                    <h3>
                                        <i class="fa fa-lock"></i> Login:</h3>
                                </div>

                                <!--Body-->
                                <div class="md-form">
                                    <i class="fa fa-envelope prefix grey-text"></i>
                                    <input type="text" id="defaultForm-email" class="form-control">
                                    <label for="defaultForm-email">Your email</label>
                                </div>

                                <div class="md-form">
                                    <i class="fa fa-lock prefix grey-text"></i>
                                    <input type="password" id="defaultForm-pass" class="form-control">
                                    <label for="defaultForm-pass">Your password</label>
                                </div>

                                <div class="text-center">
                                    <button class="btn btn-default waves-effect waves-light">Login</button>
                                </div>

                            </div>

                            <!--Footer-->
                            <div class="modal-footer">
                                <div class="options">
                                    <p>Not a member?
                                        <a href="#">Sign Up</a>
                                    </p>
                                    <p>Forgot
                                        <a href="#">Password?</a>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6 mb-4">

                        <!--Form with header-->
                        <div class="card">
                            <div class="card-body">

                                <!--Header-->
                                <div class="form-header peach-gradient">
                                    <h3>
                                        <i class="fa fa-user"></i> Register:</h3>
                                </div>

                                <!--Body-->
                                <div class="md-form">
                                    <i class="fa fa-user prefix grey-text"></i>
                                    <input type="text" id="orangeForm-name" class="form-control">
                                    <label for="orangeForm-name">Your name</label>
                                </div>
                                <div class="md-form">
                                    <i class="fa fa-envelope prefix grey-text"></i>
                                    <input type="text" id="orangeForm-email" class="form-control">
                                    <label for="orangeForm-email">Your email</label>
                                </div>

                                <div class="md-form">
                                    <i class="fa fa-lock prefix grey-text"></i>
                                    <input type="password" id="orangeForm-pass" class="form-control">
                                    <label for="orangeForm-pass">Your password</label>
                                </div>

                                <div class="text-center">
                                    <button class="btn btn-deep-orange waves-effect waves-light">Sign up</button>
                                </div>

                            </div>
                        </div>
                        <!--/Form with header-->

                    </div>
                    <!--Grid column-->

                </div>
            </div>
        </div>
        <!-- <script src="{{ asset('js/jquery-3.2.1.min.js') }}"></script>
        <script src="{{ asset('js/bootstrap.min.js') }}"></script>
        <script src="{{ asset('js/mdb.min.js') }}"></script> -->
        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.0/js/mdb.min.js"></script>
    </body>
</html>
