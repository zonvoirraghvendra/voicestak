<script>
	$( document ).ready(function() {
		@if(isset($widget) && $widget->tab_bg_color != '')
			var NewColor = LightenDarkenColor('{!! $widget->tab_bg_color !!}', -50);
			$('.widget-footer-4').css({'box-shadow': 'inset 0 -10px 20px '+NewColor});
		@endif
	})
</script>

<div class="widget-footer-4-cont widget-footer-4-cont-media">
	<div class="widget-footer-4" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color !!}" @endif>
		<div class="main-text-cont">
			<div class="image-cont" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_2 !!}" @endif>
				<div class="image"></div>
			</div>
			<div class="main-text" @if(isset($widget)) style="color: {!! $widget->tab_text_color !!}" @endif>Send a Video Or Voice Message</div>
		</div>
	</div>
</div>