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
        <div class="col-md"></div>
        <!--Grid column-->
        <div class="col-md-5 mb-4 text-center text-md-left align-middle">
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
                            <input type="email" id="cyanForm-email" class="form-control validate" name="email">
                            <label for="cyanForm-email" data-error="" data-success="">Your email</label>
                        </div>

                        <div class="md-form">
                            <i class="fa fa-lock prefix grey-text"></i>
                            <input type="password" id="cyanForm-pass" class="form-control validate" name="password">
                            <label for="cyanForm-pass" data-error="wrong" data-success="right">Your password</label>
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
        <div class="col-md"></div>



    </div>
    <!--Grid row-->




        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalContactForm">
            Launch demo modal
        </button>
        
        <div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <!--Modal: Contact form-->
            <div class="modal-dialog cascading-modal" role="document">

                <!--Content-->
                <div class="modal-content">

                    <!--Header-->
                    <div class="modal-header primary-color white-text">
                        <h4 class="title">
                            <i class="fa fa-pencil"></i> Contact form</h4>
                        <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <!--Body-->
                    <div class="modal-body">

                        <!-- Material input name -->
                        <div class="md-form form-sm">
                            <i class="fa fa-envelope prefix"></i>
                            <input type="text" id="materialFormNameModalEx1" class="form-control form-control-sm">
                            <label for="materialFormNameModalEx1">Your name</label>
                        </div>

                        <!-- Material input email -->
                        <div class="md-form form-sm">
                            <i class="fa fa-lock prefix"></i>
                            <input type="password" id="materialFormEmailModalEx1" class="form-control form-control-sm">
                            <label for="materialFormEmailModalEx1">Your email</label>
                        </div>

                        <!-- Material input subject -->
                        <div class="md-form form-sm">
                            <i class="fa fa-tag prefix"></i>
                            <input type="text" id="materialFormSubjectModalEx1" class="form-control form-control-sm">
                            <label for="materialFormSubjectModalEx1">Subject</label>
                        </div>

                        <!-- Material textarea message -->
                        <div class="md-form form-sm">
                            <i class="fa fa-pencil prefix"></i>
                            <textarea type="text" id="materialFormMessageModalEx1" class="md-textarea form-control"></textarea>
                            <label for="materialFormMessageModalEx1">Your message</label>
                        </div>

                        <div class="text-center mt-4 mb-2">
                            <button class="btn btn-primary">Send
                                <i class="fa fa-send ml-2"></i>
                            </button>
                        </div>

                    </div>
                </div>
                <!--/.Content-->
            </div>
            <!--/Modal: Contact form-->
        </div>
        



    <!-- SCRIPTS -->
    @include('layouts.scripts')

</body>

</html>