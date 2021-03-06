<script>
	$( document ).ready(function() {
		@if(isset($widget) && $widget->tab_bg_color != '')
			var NewColor = LightenDarkenColor('{!! $widget->tab_bg_color !!}', -50);
			$('.widget-footer-1').css({'box-shadow': 'inset 0 -10px 15px '+NewColor});
		@endif
	})
</script>

<div class="widget-footer-9-cont widget-footer-9-cont-media">
	<div class="top-part">
		<div class="text" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_3 !!}; color: {!! $widget->tab_text_color_2 !!}" @endif>
			SEND A
		</div>
	</div>

	<div class="widget-footer-9" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color !!}" @endif>
		<div class="left-part">
			<div class="image-cont" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_2 !!}" @endif>
				<div class="image"></div>
			</div>
			<div class="text" @if(isset($widget)) style="color: {!! $widget->tab_text_color !!}" @endif>
				Video Message
			</div>
		</div>
		<div class="center-part" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_3 !!}" @endif>
			<div class="text" @if(isset($widget)) style="color: {!! $widget->tab_text_color_2 !!}" @endif>OR</div>
		</div>
		<div class="right-part">
			<div class="image-cont" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_2 !!}" @endif>
				<div class="image"></div>
			</div>
			<div class="text" @if(isset($widget)) style="color: {!! $widget->tab_text_color !!}" @endif>
				Voice Message
			</div>
		</div>
	</div>
</div>