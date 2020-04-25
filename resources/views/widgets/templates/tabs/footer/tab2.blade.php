<script>
	$( document ).ready(function() {
		@if(isset($widget) && $widget->tab_bg_color != '')
			var NewColor = LightenDarkenColor('{!! $widget->tab_bg_color !!}', -50);
			$('.widget-footer-2').css({'box-shadow': 'inset 0 -10px 15px '+NewColor});
		@endif
	})
</script>

<div class="widget-footer-2 widget-footer-2-media" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color !!}" @endif>
	<div class="main-text-cont">
		<div class="main-text" @if(isset($widget)) style="color: {!! $widget->tab_text_color !!}" @endif>Send a</div>
		<div class="image-cont1" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_2 !!}" @endif>
			<div class="image"></div>
		</div>
		<div class="main-text" @if(isset($widget)) style="color: {!! $widget->tab_text_color !!}" @endif>Video Or</div>
		<div class="image-cont2" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_2 !!}" @endif>
			<div class="image"></div>
		</div>
		<div class="main-text" @if(isset($widget)) style="color: {!! $widget->tab_text_color !!}" @endif>Voice Message</div>
	</div>
</div>