<!DOCTYPE html>
<html lang="en">
    <head>
        @include('layouts.htmlheader')
    </head>
    <body class="fixed-sn black-skin">
        <!--Double navigation-->
        <header>
            <!-- Sidebar navigation -->
            @include('layouts.sidebar')
            <!--/. Sidebar navigation -->
            <!-- Navbar -->
            @include('layouts.navbar')
            <!-- /.Navbar -->
        </header>
        <!--/.Double navigation-->
        
        <!--Main Layout-->
        <main>
            <div class="container-fluid mt-5">
<<<<<<< HEAD
               

=======
>>>>>>> 8ada8eddca5dd570b14e7ed5e2cec281ace98b1b
                <!-- Content -->
                @yield('content')
                <!-- Content -->
            </div>
        </main>
        <!--Main Layout-->
        
        <!--Footer-->
        @include('layouts.footer')
        <!--/.Footer-->

        <!-- SCRIPTS -->
        @include('layouts.scripts')
    </body>
</html>