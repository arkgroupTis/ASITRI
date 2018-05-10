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
>>>>>>> 5a93aa0f1a4e3b9c7e352c1105d52a18d47afa22
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