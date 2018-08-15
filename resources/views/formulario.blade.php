<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags always come first -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>AsiTri</title>

        <!-- Bootstrap core CSS -->
        <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

        <!-- Material Design Bootstrap -->
        <link href="{{ asset('css/mdb.min.css') }}" rel="stylesheet">

        <!-- Your custom styles (optional) -->
        <link href="{{ asset('css/style.min.css') }}" rel="stylesheet">

        <!-- Favicon-->
        <link rel="shortcut icon" href="/A.ico">

        <!-- Css de Fer -->
        <link href="{{ asset('css/fer.min.css') }}" rel="stylesheet">
    </head>
    <body class="fixed-sn cyan-skin">
        <!--Double navigation-->
        <header>
            <!-- Sidebar navigation -->
            <div id="slide-out" class="side-nav sn-bg-4 fixed mdb-sidenav">
                <ul class="custom-scrollbar list-unstyled" style="max-height:100vh;">
                    <!-- Logo -->
                    <li>
                        <div class="logo-wrapper waves-light">
                            <a href="#">
                                <img src="/img/fd.png" class="img-fluid flex-center">
                            </a>
                        </div>
                    </li>
                    <!--/. Logo -->
                    <!--Social-->
                    <li>
                        <ul class="social">
                            <li><a href="#" class="icons-sm fb-ic"><i class="fab fa-facebook-f"> </i></a></li>
                            <li><a href="#" class="icons-sm pin-ic"><i class="fab fa-pinterest"> </i></a></li>
                            <li><a href="#" class="icons-sm gplus-ic"><i class="fab fa-google-plus"> </i></a></li>
                            <li><a href="#" class="icons-sm tw-ic"><i class="fab fa-twitter"> </i></a></li>
                        </ul>
                    </li>
                    <!--/Social-->
                    <hr class="white">
                    <!-- Side navigation links -->
                    <li>
                        <ul class="collapsible collapsible-accordion">
                            <li>
                                <a class="collapsible-header waves-effect arrow-r">
                                <i class="fas fa-file-alt"></i>
                                    Proyectos
                                    <i class="fa fa-angle-down rotate-icon"></i>
                                </a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li>
                                            <a href="/proyectos" class="waves-effect">Proyectos</a>
                                        </li>
                                        <li>
                                            <a href="/proyectos/create" class="waves-effect">Nuevo Proyecto</a>
                                        </li>
                                        <li>
                                            <a href="/proyecto_est" class="waves-effect">Asignar Proyecto</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li>
                                <a class="collapsible-header waves-effect arrow-r">
                                <i class="fas fa-user"></i>
                                    Docentes & Profesionales
                                    <i class="fa fa-angle-down rotate-icon"></i>
                                </a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li>
                                            <a href="/docentes" class="waves-effect">Docentes & Profesionales</a>
                                        </li>
                                        <li>
                                            <a href="/docentes/create" class="waves-effect">Nuevo Docente/Profesional</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            <li>
                                <a class="collapsible-header waves-effect arrow-r">
                                <i class="fa fa-university"></i>
                                    Areas & Sub Areas
                                    <i class="fa fa-angle-down rotate-icon"></i>
                                </a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li>
                                            <a href="/areas" class="waves-effect">Areas & Sub Areas</a>
                                        </li>
                                        <li>
                                            <a href="/areas/create" class="waves-effect">Nueva Area/Sub Area</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            <li>
                                <a class="waves-effect" href="/tribunales">
                                <i class="fas fa-balance-scale"></i> 
                                       Tribunales
                                </a>
                            </li>
                            <li>
                                <a class="collapsible-header waves-effect arrow-r" href="/estudiante">
                                <i class="fa fa-graduation-cap"></i>
                                        Estudiantes
                                </a>
                            </li>
                            <li>
                                <a class="collapsible-header waves-effect arrow-r">
                                <i class="fas fa-file-alt"></i>
                                    Reportes
                                    <i class="fa fa-angle-down rotate-icon"></i>
                                </a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li>
                                            <a href="/reporteGeneral" class="waves-effect">Reporte General</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <hr class="white">
                            
                        </ul>
                    </li>
                    <!--/. Side navigation links -->
                </ul>
                <div class="sidenav-bg mask-strong">
                    
                </div>
            </div>

            <!--/. Sidebar navigation -->
            <!-- Navbar -->
            <nav class="navbar fixed-top navbar-toggleable-md navbar-expand-lg scrolling-navbar double-nav">
                <!-- SideNav slide-out button -->
                <div class="float-left">
                    <a href="#" data-activates="slide-out" class="button-collapse"><i class="fa fa-bars"></i></a>
                </div>
                <!-- Breadcrumb-->
                <div class="breadcrumb-dn mr-auto">
                    <a href="{{url()->previous()}}" class="btn btn-sm"><i class="fa fa-arrow-left fa-lg"></i></a>
                    <a class="btn btn-sm" id="btn-expand" onclick="launchIntoFullscreen(document.documentElement);"><i class="fas fa-expand fa-lg"></i></a>
                    <a href="/home" class="btn btn-sm"><i class="fa fa-th-large fa-lg"></i></a>
                    <a class="btn btn-sm d-none" id="btn-compress" onclick="exitFullscreen();"><i class="fas fa-compress fa-lg"></i></a>
                 
                </div>
                <ul class="nav navbar-nav nav-flex-icons ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="text-transform: capitalize;">
                            <i class="fa fa-user"></i> asdasdad
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="{{ url('/logout') }}">
                                <i class="fas fa-sign-out-alt"></i>Logout
                            </a>
                        </div>
                    </li>
                </ul>
            </nav>

            <!-- /.Navbar -->
        </header>
        <!--/.Double navigation-->
        
        <!--Main Layout-->
        <main>
            <div class="container-fluid mt-5">

                <!-- Content -->
                <form method="POST" action="/probandopost">
                    {{ csrf_field() }}
                        
                    <div class="form-group">
                        <label for="var3" >Nombre var3</label>
                        <input id="var3" class="form-control" type="text" name="var[cualquier valor]" required autocomplete="off">
                    </div>
                    <button type="button" onclick="agregar();">agregar</button>
                    <div id="agregaraqui">aqui</div>

                    <button class="btn btn-primary" type="submit">
                        Guardar<i class="material-icons right">send</i>
                    </button>
                </form>
                <!-- Content -->
            </div>
        </main>
        <!--Main Layout-->
        
        <!--Footer-->
        <footer class="page-footer text-center font-small mt-4 wow fadeIn">

            <!--Call to action-->
            <!-- <div class="pt-4">
                <a class="btn btn-outline-white" href="#" role="button">boton 1
                    <i class="fa fa-download ml-2"></i>
                </a>
                <a class="btn btn-outline-white" href="#" role="button">boton 2
                    <i class="fa fa-graduation-cap ml-2"></i>
                </a>
            </div> -->
            <!--/.Call to action-->
            <div class="group form-row" style=margin-top:80px;></div>

            <hr class="my-4">

            <!-- Social icons -->
            <div class="pb-4">
                <a href="#">
                    <i class="fab fa-facebook-f mr-3"></i>
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
        <!-- Fontawesome core JavaScript -->
        <script defer src="{{ asset('js/fontawesome-all.js') }}"></script>
        <!-- JQuery -->
        <script type="text/javascript" src="{{ asset('js/jquery-3.2.1.min.js') }}"></script>

        <!-- Tooltips -->
        <script type="text/javascript" src="{{ asset('js/popper.min.js') }}"></script>

        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="{{ asset('js/bootstrap.min.js') }}"></script>

        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="{{ asset('js/mdb.min.js') }}"></script>
        <!-- Initializations -->
        <script>
            // SideNav Initialization
            $(".button-collapse").sideNav();
            // Animations initialization
            new WOW().init();
            // Material Select Initialization
            $(document).ready(function() {
                $('.mdb-select').material_select();
            });
            // Tooltips Initialization
            $(function () {
                $('[data-toggle="tooltip"]').tooltip()
            })

            $('.datepicker').pickadate({
                monthsFull: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                monthsShort: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                weekdaysShort: ['Dom', 'Lun', 'Mar', 'Mie', 'Jue', 'Vie', 'Sab'],
                weekdaysFull: ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'],
                format: 'La Fecha es: dddd, dd mmm, yyyy',
                formatSubmit: 'yyyy/mm/dd',
                today: 'Actual',
                clear: 'Limpiar',
                close: 'Cerrar',
            });
            // Data Picker Initialization
            $('.datepicker').pickadate();



            // PARA HACER FULL SCREEN LA PANTALLA
            function launchIntoFullscreen(element) {
                if(element.requestFullscreen) {
                    element.requestFullscreen();
                } else if(element.mozRequestFullScreen) {
                    element.mozRequestFullScreen();
                } else if(element.webkitRequestFullscreen) {
                    element.webkitRequestFullscreen();
                } else if(element.msRequestFullscreen) {
                    element.msRequestFullscreen();
                }
                $('#btn-expand').addClass('d-none');
                $('#btn-compress').removeClass('d-none');
            }
            function exitFullscreen() {
                if(document.exitFullscreen) {
                    document.exitFullscreen();
                } else if(document.mozCancelFullScreen) {
                    document.mozCancelFullScreen();
                } else if(document.webkitExitFullscreen) {
                    document.webkitExitFullscreen();
                }
                $('#btn-compress').addClass('d-none');
                $('#btn-expand').removeClass('d-none');
            }
        </script>
        <script>
            var cont = 0;
            function agregar() {
                // alert("le diste click");
                var variable = "esto es una variable";
                var campo = "<div class='form-group'>\
                        <label for='var3' name='nombres[]' >"+variable+"</label>\
                        <input id='var3' class='form-control' type='text' name='var[input "+cont+"]' required autocomplete='off'>\
                    </div>";
                    cont++;
                $("#agregaraqui").append(campo);
            }
        </script>
    </body>
</html>
