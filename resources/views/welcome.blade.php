<!DOCTYPE html>
<html lang="en">
    <head>
        @include('layouts.htmlheader')
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
                    <strong>ASIGNACION DE TRIBUNALES</strong>

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
                    </ul>
                    <!-- Right -->
                    <ul class="navbar-nav nav-flex-icons">
                        
                        @if(auth()->guest())
                        <li class="nav-item">
                            <a href="{{url('login')}}" class="nav-link border border-light rounded">
                                <i class="fa fa-lock mr-2"></i>Iniciar Sesion
                            </a>
                        </li>
                        @else
                        <li class="nav-item">
                            <a href="{{url('/home')}}" class="nav-link border border-light rounded">
                                <i class="fa fa-home mr-2"></i>Home
                            </a>
                        </li>
                        @endif
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
                        <div class="mask rgba-blue-grey-light d-flex justify-content-center align-items-center">
                            <!-- Content -->
                            <div class="text-center white-text mx-5 wow fadeIn">
                                <h1 class="mb-4">
                                <strong></strong>
                                </h1>
                                <p>
                                    <strong></strong>
                                </p>
                                <p class="mb-4 d-none d-md-block">
                                    <strong></strong>
                                </p>
                                
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
                                <strong></strong>
                                </h1>
                                <p>
                                    <strong></strong>
                                </p>
                                <p class="mb-4 d-none d-md-block">
                                    <strong></strong>
                                </p>
                               
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
                                <strong></strong>
                                </h1>
                                <p>
                                    <strong></strong>
                                </p>
                                <p class="mb-4 d-none d-md-block">
                                    <strong></strong>
                                </p>
                                
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
        <!--Footer-->
        <footer class="page-footer text-center font-small mt-4 wow fadeIn">
            <hr class="my-4">
            <!-- Social icons -->
            <div class="pb-4">
                <a href="#">
                    <i class="fab fa-facebook mr-3"></i>
                </a>
                <a href="#">
                    <i class="fab fa-twitter mr-3"></i>
                </a>
                <a href="#">
                    <i class="fab fa-youtube mr-3"></i>
                </a>
                <a href="#">
                    <i class="fab fa-google-plus mr-3"></i>
                </a>
                <a href="#">
                    <i class="fab fa-dribbble mr-3"></i>
                </a>
                <a href="#">
                    <i class="fab fa-pinterest mr-3"></i>
                </a>
                <a href="#">
                    <i class="fab fa-github mr-3"></i>
                </a>
                <a href="#">
                    <i class="fab fa-codepen mr-3"></i>
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

        @include('layouts.scripts')
    </body>
</html>