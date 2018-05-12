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
</script>
@yield('script')