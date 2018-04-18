<!DOCTYPE html>
<html lang="en">

<head>
    @include('layouts.htmlheader')
</head>

<body class="grey lighten-3">

    <!--Main Navigation-->
    <header>

        <!-- Navbar -->
        @include('layouts.navbar')
        <!-- Navbar -->

        <!-- Sidebar -->
        @include('layouts.sidebar')
        <!-- Sidebar -->

    </header>
    <!--Main Navigation-->

    <!--Main layout-->
    <main class="pt-5 mx-lg-5">
        <div class="container-fluid mt-5">

            <!-- Heading -->
            @include('layouts.heading')
            <!-- Heading -->

            <!-- Content -->
            @yield('content')
            <!-- Content -->
    
        </div>
    </main>
    <!--Main layout-->

    <!--Footer-->
    @include('layouts.footer')
    <!--/.Footer-->

    <!-- SCRIPTS -->
    @include('layouts.scripts')
    
    <script>
        // Show sideNav
// $('.button-collapse').sideNav('show');
// Hide sideNav
$('.button-collapse').sideNav('hide');
    </script>
</body>

</html>