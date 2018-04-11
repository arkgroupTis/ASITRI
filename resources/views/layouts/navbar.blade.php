<nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
    <div class="container-fluid">

        <!-- Brand -->
        <a class="navbar-brand waves-effect" href="#">
            <strong class="blue-text">MDB</strong>
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
                    <a class="nav-link waves-effect" href="#">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link waves-effect" href="#">nav 1</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link waves-effect" href="#">nav 2</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link waves-effect" href="#">nav 3</a>
                </li>
            </ul>

            <!-- Right -->
            <ul class="navbar-nav nav-flex-icons">
                <li class="nav-item">
                    <a href="#" class="nav-link waves-effect">
                        <i class="fa fa-facebook"></i>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link waves-effect">
                        <i class="fa fa-twitter"></i>
                    </a>
                </li>
                @if (Auth::guest())
                    <li class="nav-item">
                        <a href="{{ url('/login') }}" class="nav-link border border-light rounded waves-effect"
                           >
                            <i class="fa fa-sign-out mr-2"></i>Login
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{ url('/register') }}" class="nav-link border border-light rounded waves-effect"
                           >
                            <i class="fa fa-sign-out mr-2"></i>Register
                        </a>
                    </li>
                @else
                    <li class="nav-item">
                        <button class="nav-link border border-light rounded waves-effect" type="button" >
                            {{ Auth::user()->name }}
                        </button>
                    </li>
                    <li class="nav-item">
                        <a href="{{ url('/logout') }}" class="nav-link border border-light rounded waves-effect"
                           >
                            <i class="fa fa-sign-out mr-2"></i>Logout
                        </a>
                    </li>
                @endif
            </ul>

        </div>

    </div>
</nav>