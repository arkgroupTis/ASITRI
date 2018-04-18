@extends('layouts.app')

@section('content')
<h1>completar informacion aqui</h1>
<!-- BOTON GRADIENTE -->
<button type="button" class="btn peach-gradient btn-lg">Large button</button>
<button type="button" class="btn purple-gradient btn-lg">Large button</button>
<button class="btn peach-gradient btn-rounded">Peach</button>
<button class="btn purple-gradient btn-rounded">Purple</button>
<button class="btn blue-gradient btn-rounded">Blue</button>
<button class="btn aqua-gradient btn-rounded">Aqua</button>
<a class="btn-floating btn-lg purple-gradient"><i class="fa fa-plus fa-lg" style="margin-top:15px;margin-left:20px;color:#fff;"></i></a>
<a class="btn-floating peach-gradient"><i class="fa fa-leaf"></i></a>
<a class="btn-floating btn-sm blue-gradient"><i class="fa fa-star"></i></a>


<!--Info message-->
<a class="btn btn-info" onclick="toastr.info('Hi! I am info message.');">Info message</a>
<!--Warning message-->
<a class="btn btn-warning" onclick="toastr.warning('Hi! I am warning message.');">Warning message</a>
<!--Success message-->
<a class="btn btn-success" onclick="toastr.success('Hi! I am success message.');">Success message</a>
<!--Error message-->
<a class="btn btn-danger" onclick="toastr.error('Hi! I am error message.');">Error message</a>
@endsection
