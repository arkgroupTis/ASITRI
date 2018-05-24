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