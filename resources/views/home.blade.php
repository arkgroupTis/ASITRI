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
<a class="btn-floating btn-lg purple-gradient"><i class="fa fa-bolt"></i></a>
<a class="btn-floating peach-gradient"><i class="fa fa-leaf"></i></a>
<a class="btn-floating btn-sm blue-gradient"><i class="fa fa-star"></i></a>
<!-- LOGIN ELEGANTE -->
<section class="form-elegant">
	<!--Form without header-->
	<div class="card">
		<div class="card-body mx-4">
			<!--Header-->
			<div class="text-center">
				<h3 class="dark-grey-text mb-5"><strong>Sign in</strong></h3>
			</div>
			<!--Body-->
			<div class="md-form">
				<input type="text" id="Form-email1" class="form-control">
				<label for="Form-email1">Your email</label>
			</div>
			<div class="md-form pb-3">
				<input type="password" id="Form-pass1" class="form-control">
				<label for="Form-pass1">Your password</label>
				<p class="font-small blue-text d-flex justify-content-end">Forgot <a href="#" class="blue-text ml-1"> Password?</a></p>
			</div>
			<div class="text-center mb-3">
				<button type="button" class="btn blue-gradient btn-block btn-rounded z-depth-1a">Sign in</button>
			</div>
			<p class="font-small dark-grey-text text-right d-flex justify-content-center mb-3 pt-2"> or Sign in with:</p>
			<div class="row my-3 d-flex justify-content-center">
				<!--Facebook-->
				<button type="button" class="btn btn-white btn-rounded mr-md-3 z-depth-1a"><i class="fa fa-facebook blue-text text-center"></i></button>
				<!--Twitter-->
				<button type="button" class="btn btn-white btn-rounded mr-md-3 z-depth-1a"><i class="fa fa-twitter blue-text"></i></button>
				<!--Google +-->
				<button type="button" class="btn btn-white btn-rounded z-depth-1a"><i class="fa fa-google-plus blue-text"></i></button>
			</div>
		</div>
		<!--Footer-->
		<div class="modal-footer mx-5 pt-3 mb-1">
			<p class="font-small grey-text d-flex justify-content-end">Not a member? <a href="#" class="blue-text ml-1"> Sign Up</a></p>
		</div>
	</div>
	<!--/Form without header-->
</section>

<hr>

<section class="form-gradient">

    <!--Form with header-->
    <div class="card">

        <!--Header-->
        <div class="header pt-3 peach-gradient">

            <div class="row d-flex justify-content-center">
                <h3 class="white-text mb-3 pt-3 font-weight-bold">Log in</h3>
            </div>

            <div class="row mt-2 mb-3 d-flex justify-content-center">
                <!--Facebook-->
                <a class="fa-lg p-2 m-2 fb-ic"><i class="fa fa-facebook white-text fa-lg"> </i></a>
                <!--Twitter-->
                <a class="fa-lg p-2 m-2 tw-ic"><i class="fa fa-twitter white-text fa-lg"> </i></a>
                <!--Google +-->
                <a class="fa-lg p-2 m-2 gplus-ic"><i class="fa fa-google-plus white-text fa-lg"> </i></a>
            </div>

        </div>
        <!--Header-->

        <div class="card-body mx-4 mt-4">

            <!--Body-->
            <div class="md-form">
                <input type="text" id="Form-email3" class="form-control">
                <label for="Form-email3">Your email</label>
            </div>

            <div class="md-form pb-1 pb-md-3">
                <input type="password" id="Form-pass3" class="form-control">
                <label for="Form-pass3">Your password</label>
                <p class="font-small grey-text d-flex justify-content-end">Forgot <a href="#" class="dark-grey-text ml-1 font-weight-bold"> Password?</a></p>
            </div>


            <!--Grid row-->
            <div class="row d-flex align-items-center mb-4">

                <!--Grid column-->
                <div class="col-md-1 col-md-5 d-flex align-items-start">
                    <div class="text-center">
                        <button type="button" class="btn btn-grey btn-rounded z-depth-1a">Log in</button>
                    </div>
                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-md-7">
                    <p class="font-small grey-text d-flex justify-content-end mt-3">Don't have an account? <a href="#" class="dark-grey-text ml-1 font-weight-bold"> Sign up</a></p>
                </div>
                <!--Grid column-->

            </div>
            <!--Grid row-->
        </div>

    </div>
    <!--/Form with header-->

</section>

<hr>

<!--Section: Live preview-->
<section class="form-dark">

    <!--Form without header-->
    <div class="card card-image" style="background-image: url('/img/fondo-login.jpg'); width: 28rem;">
        <div class="text-white rgba-stylish-strong py-5 px-5 z-depth-4">

            <!--Header-->
            <div class="text-center">
                <h3 class="white-text mb-5 mt-4 font-weight-bold"><strong>SIGN</strong> <a class="green-text font-weight-bold"><strong> UP</strong></a></h3>
            </div>

            <!--Body-->
            <div class="md-form">
                <input type="text" id="Form-email5" class="form-control white-text">
                <label for="Form-email5">Your email</label>
            </div>

            <div class="md-form pb-3">
                <input type="password" id="Form-pass5" class="form-control white-text">
                <label for="Form-pass5">Your password</label>
                <div class="form-check my-4">
                  <input class="form-check-input" type="checkbox" value="" id="defaultCheck17">
                  <label class="form-check-label white-text" for="defaultCheck17">Accept the<a href="#" class="green-text font-weight-bold"> Terms and Conditions</a></label>
                </div>
            </div>

            <!--Grid row-->
            <div class="row d-flex align-items-center mb-4">

                <!--Grid column-->
                <div class="text-center mb-3 col-md-12">
                    <button type="button" class="btn btn-success btn-block btn-rounded z-depth-1">Sign in</button>
                </div>
                <!--Grid column-->
            </div>
            <!--Grid row-->

            <!--Grid column-->
            <div class="col-md-12">
                <p class="font-small white-text d-flex justify-content-end">Have an account? <a href="#" class="green-text ml-1 font-weight-bold"> Log in</a></p>
            </div>
            <!--Grid column-->

        </div>
    </div>
    <!--/Form without header-->

</section>
<!--Section: Live preview-->


@endsection
