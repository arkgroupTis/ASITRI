<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Material Design Bootstrap</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <!-- <link href="css/style.min.css" rel="stylesheet"> -->
        <style>
            .carousel,.carousel .carousel-inner,.carousel .carousel-inner .active,.carousel .carousel-inner .carousel-item,.view,body,html{height:100%}.navbar{background-color:rgba(0,0,0,.2)}.page-footer,.top-nav-collapse{background-color:#1C2331}@media only screen and (max-width:768px){.navbar{background-color:#1C2331}}
        </style>
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
            <div class="container">
                <!-- Brand -->
                <a class="navbar-brand" href="#">
                    <strong>MDB</strong>
                </a>
                <!-- Collapse -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Links -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">About MDB</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Free download</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Free tutorials</a>
                        </li>
                    </ul>
                    <!-- Right -->
                    <ul class="navbar-nav nav-flex-icons">
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{url('login')}}" class="nav-link border border-light rounded">
                                <i class="fa fa-lock mr-2"></i>Iniciar Sesion
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Navbar -->
        <!--Carousel Wrapper-->
        <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
            <!--Indicators-->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                <li data-target="#carousel-example-1z" data-slide-to="2"></li>
            </ol>
            <!--/.Indicators-->
            <!--Slides-->
            <div class="carousel-inner" role="listbox">
                <!--First slide-->
                <div class="carousel-item active">
                    <div class="view" style="background-image: url('/img/fondo1.jpg'); background-repeat: no-repeat; background-size: cover;">
                        <!-- Mask & flexbox options-->
                        <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                            <!-- Content -->
                            <div class="text-center white-text mx-5 wow fadeIn">
                                <h1 class="mb-4">
                                <strong>Learn Bootstrap 4 with MDB</strong>
                                </h1>
                                <p>
                                    <strong>Best & free guide of responsive web design</strong>
                                </p>
                                <p class="mb-4 d-none d-md-block">
                                    <strong>The most comprehensive tutorial for the Bootstrap 4. Loved by over 500 000 users. Video and written versions
                                    available. Create your own, stunning website.</strong>
                                </p>
                                <a href="https://mdbootstrap.com/bootstrap-tutorial/" class="btn btn-outline-white btn-lg">Start free tutorial
                                    <i class="fa fa-graduation-cap ml-2"></i>
                                </a>
                            </div>
                            <!-- Content -->
                        </div>
                        <!-- Mask & flexbox options-->
                    </div>
                </div>
                <!--/First slide-->
                <!--Second slide-->
                <div class="carousel-item">
                    <div class="view" style="background-image: url('/img/fondo2.jpg'); background-repeat: no-repeat; background-size: cover;">
                        <!-- Mask & flexbox options-->
                        <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                            <!-- Content -->
                            <div class="text-center white-text mx-5 wow fadeIn">
                                <h1 class="mb-4">
                                <strong>Learn Bootstrap 4 with MDB</strong>
                                </h1>
                                <p>
                                    <strong>Best & free guide of responsive web design</strong>
                                </p>
                                <p class="mb-4 d-none d-md-block">
                                    <strong>The most comprehensive tutorial for the Bootstrap 4. Loved by over 500 000 users. Video and written versions
                                    available. Create your own, stunning website.</strong>
                                </p>
                                <a href="https://mdbootstrap.com/bootstrap-tutorial/" class="btn btn-outline-white btn-lg">Start free tutorial
                                    <i class="fa fa-graduation-cap ml-2"></i>
                                </a>
                            </div>
                            <!-- Content -->
                        </div>
                        <!-- Mask & flexbox options-->
                    </div>
                </div>
                <!--/Second slide-->
                <!--Third slide-->
                <div class="carousel-item">
                    <div class="view" style="background-image: url('/img/fondo3.jpg'); background-repeat: no-repeat; background-size: cover;">
                        <!-- Mask & flexbox options-->
                        <div class="mask rgba-black-light d-flex justify-content-center align-items-center">
                            <!-- Content -->
                            <div class="text-center white-text mx-5 wow fadeIn">
                                <h1 class="mb-4">
                                <strong>Learn Bootstrap 4 with MDB</strong>
                                </h1>
                                <p>
                                    <strong>Best & free guide of responsive web design</strong>
                                </p>
                                <p class="mb-4 d-none d-md-block">
                                    <strong>The most comprehensive tutorial for the Bootstrap 4. Loved by over 500 000 users. Video and written versions
                                    available. Create your own, stunning website.</strong>
                                </p>
                                <a href="https://mdbootstrap.com/bootstrap-tutorial/" class="btn btn-outline-white btn-lg">Start free tutorial
                                    <i class="fa fa-graduation-cap ml-2"></i>
                                </a>
                            </div>
                            <!-- Content -->
                        </div>
                        <!-- Mask & flexbox options-->
                    </div>
                </div>
                <!--/Third slide-->
            </div>
            <!--/.Slides-->
            <!--Controls-->
            <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
            <!--/.Controls-->
        </div>
        <!--/.Carousel Wrapper-->
        <!--Main layout-->
        <main>
            <div class="container">
                <!--Section: Main info-->
                <section class="mt-5 wow fadeIn">
                    <!--Grid row-->
                    <div class="row">
                        <!--Grid column-->
                        <div class="col-md-6 mb-4">
                            <img src="/img/fondo-login.jpg" class="img-fluid z-depth-1-half" alt="">
                        </div>
                        <!--Grid column-->
                        <!--Grid column-->
                        <div class="col-md-6 mb-4">
                            <!-- Main heading -->
                            <h3 class="h3 mb-3">Material Design for Bootstrap</h3>
                            <p>This template is created with Material Design for Bootstrap (
                            <strong>MDB</strong> ) framework.</p>
                            <p>Read details below to learn more about MDB.</p>
                            <!-- Main heading -->
                            <hr>
                            <p>
                                <strong>400+</strong> material UI elements,
                                <strong>600+</strong> material icons,
                                <strong>74</strong> CSS animations, SASS files, templates, tutorials and many more.
                                <strong>Free for personal and commercial use.</strong>
                            </p>
                            <!-- CTA -->
                            <a href="#" class="btn btn-grey btn-md">Download
                                <i class="fa fa-download ml-1"></i>
                            </a>
                            <a href="#" class="btn btn-grey btn-md">Live demo
                                <i class="fa fa-image ml-1"></i>
                            </a>
                        </div>
                        <!--Grid column-->
                    </div>
                    <!--Grid row-->
                </section>
                <!--Section: Main info-->
                <hr class="my-5">
                <!--Section: Main features & Quick Start-->
                <section>
                    <h3 class="h3 text-center mb-5">About MDB</h3>
                    <!--Grid row-->
                    <div class="row wow fadeIn">
                        <!--Grid column-->
                        <div class="col-lg-6 col-md-12 px-4">
                            <!--First row-->
                            <div class="row">
                                <div class="col-1 mr-3">
                                    <i class="fa fa-code fa-2x indigo-text"></i>
                                </div>
                                <div class="col-10">
                                    <h5 class="feature-title">Bootstrap 4</h5>
                                    <p class="grey-text">Thanks to MDB you can take advantage of all feature of newest Bootstrap 4.</p>
                                </div>
                            </div>
                            <!--/First row-->
                            <div style="height:30px"></div>
                            <!--Second row-->
                            <div class="row">
                                <div class="col-1 mr-3">
                                    <i class="fa fa-book fa-2x blue-text"></i>
                                </div>
                                <div class="col-10">
                                    <h5 class="feature-title">Detailed documentation</h5>
                                    <p class="grey-text">We give you detailed user-friendly documentation at your disposal. It will help you to implement your ideas
                                        easily.
                                    </p>
                                </div>
                            </div>
                            <!--/Second row-->
                            <div style="height:30px"></div>
                            <!--Third row-->
                            <div class="row">
                                <div class="col-1 mr-3">
                                    <i class="fa fa-graduation-cap fa-2x cyan-text"></i>
                                </div>
                                <div class="col-10">
                                    <h5 class="feature-title">Lots of tutorials</h5>
                                    <p class="grey-text">We care about the development of our users. We have prepared numerous tutorials, which allow you to learn
                                    how to use MDB as well as other technologies.</p>
                                </div>
                            </div>
                            <!--/Third row-->
                        </div>
                        <!--/Grid column-->
                        <!--Grid column-->
                        <div class="col-lg-6 col-md-12">
                            <p class="h5 text-center mb-4">Watch our "5 min Quick Start" tutorial</p>
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src="" allowfullscreen></iframe>
                            </div>
                        </div>
                        <!--/Grid column-->
                    </div>
                    <!--/Grid row-->
                </section>
                <!--Section: Main features & Quick Start-->
            </div>
        </main>
        <!--Main layout-->
        <!--Footer-->
        <footer class="page-footer text-center font-small mt-4 wow fadeIn">
            <!--Call to action-->
            <div class="pt-4">
                <a class="btn btn-outline-white" href="#" role="button">Download MDB
                    <i class="fa fa-download ml-2"></i>
                </a>
                <a class="btn btn-outline-white" href="#" role="button">Start free tutorial
                    <i class="fa fa-graduation-cap ml-2"></i>
                </a>
            </div>
            <!--/.Call to action-->
            <hr class="my-4">
            <!-- Social icons -->
            <div class="pb-4">
                <a href="#">
                    <i class="fa fa-facebook mr-3"></i>
                </a>
                <a href="#">
                    <i class="fa fa-twitter mr-3"></i>
                </a>
                <a href="#">
                    <i class="fa fa-youtube mr-3"></i>
                </a>
                <a href="#">
                    <i class="fa fa-google-plus mr-3"></i>
                </a>
                <a href="#">
                    <i class="fa fa-dribbble mr-3"></i>
                </a>
                <a href="#">
                    <i class="fa fa-pinterest mr-3"></i>
                </a>
                <a href="#">
                    <i class="fa fa-github mr-3"></i>
                </a>
                <a href="#">
                    <i class="fa fa-codepen mr-3"></i>
                </a>
            </div>
            <!-- Social icons -->
            <!--Copyright-->
            <div class="footer-copyright py-3">
                © 2018 Copyright:
                <a href="#"> ArkGroup.com </a>
            </div>
            <!--/.Copyright-->
        </footer>
        <!--/.Footer-->
        <!-- SCRIPTS -->
        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Initializations -->
        <script type="text/javascript">
        // Animations initialization
        new WOW().init();
        </script>
    </body>
</html>