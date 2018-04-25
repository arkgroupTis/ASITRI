<ol class="breadcrumb wow fadeIn z-depth-1-half">
	@foreach($home as $key => $h)
		@if($key == '#')
		<li class="breadcrumb-item active">{{$h}}</li>
		@else
		<li class="breadcrumb-item"><a href="{{$key}}">{{$h}}</a></li>
		@endif
	@endforeach
</ol>