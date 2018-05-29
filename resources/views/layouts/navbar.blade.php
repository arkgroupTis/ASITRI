<nav class="navbar fixed-top navbar-toggleable-md navbar-expand-lg scrolling-navbar double-nav">
    <!-- SideNav slide-out button -->
    <div class="float-left">
        <a href="#" data-activates="slide-out" class="button-collapse"><i class="fa fa-bars"></i></a>
    </div>
    <!-- Breadcrumb-->
    <div class="breadcrumb-dn mr-auto">
        <a href="{{url()->previous()}}" class="btn btn-sm"><i class="fa fa-arrow-left fa-lg"></i></a>
        ASITRI 
        <a class="btn btn-sm" id="btn-expand" onclick="launchIntoFullscreen(document.documentElement);"><i class="fas fa-expand fa-lg"></i></a>
        <a class="btn btn-sm d-none" id="btn-compress" onclick="exitFullscreen();"><i class="fas fa-compress fa-lg"></i></a>
    </div>
    <ul class="nav navbar-nav nav-flex-icons ml-auto">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-user"></i> {{ Auth::user()->name }}
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
