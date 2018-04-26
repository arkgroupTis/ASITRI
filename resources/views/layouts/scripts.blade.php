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
    $(document).ready(function() {
		$('.mdb-select').material_select();
	});
</script>
