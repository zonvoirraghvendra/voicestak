<script>
	$( document ).ready(function() {
		@if(isset($widget) && $widget->tab_bg_color != '')
			var NewColor = LightenDarkenColor('{!! $widget->tab_bg_color !!}', -50);
			$('.widget-side-5').css({'box-shadow': 'inset 0 -10px 10px '+NewColor});
		@endif
	})
</script>

<div class="widget-footer-5 widget-side-5 rotate" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color !!}" @endif>
	<div class="main-text" @if(isset($widget)) style="color: {!! $widget->tab_text_color !!}" @endif>Send a Video Or Voice Message</div>
	<div class="image-cont" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_2 !!}; border-color: {!! $widget->tab_bg_color !!}" @endif>
		<div class="image"></div>
		<div class="arrow" @if(isset($widget)) style="border-color: {!! $widget->tab_bg_color_2 !!}" @endif></div>
	</div>
</div>