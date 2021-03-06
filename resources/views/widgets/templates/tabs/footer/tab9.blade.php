<script>
	$( document ).ready(function() {
		@if(isset($widget) && $widget->tab_bg_color != '')
			var NewColor = LightenDarkenColor('{!! $widget->tab_bg_color !!}', -20);
			$('.widget-footer-10').css({'box-shadow': 'inset 0 -20px 15px '+NewColor});
		@endif
		@if(isset($widget) && $widget->tab_bg_color_3 != '')
			var NewColor2 = LightenDarkenColor('{!! $widget->tab_bg_color_3 !!}', -20);
			$('.widget-footer-10-cont .left-text-cont, .widget-footer-10 .middle-part').css({'box-shadow': 'inset 0 -22px 15px '+NewColor2});
		@endif
	})
</script>

<div class="widget-footer-10-cont widget-footer-10-cont-media">
	<div class="left-text-cont" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_3 !!}" @endif>
		<div class="text" @if(isset($widget)) style="color: {!! $widget->tab_text_color_2 !!};" @endif>
			SEND A
		</div>
	</div>
	<div class="widget-footer-10" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color !!}" @endif>
		<div class="left-part">
			<div class="text" @if(isset($widget)) style="color: {!! $widget->tab_text_color !!}" @endif>
				Video Message
			</div>
			<div class="image-cont" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color !!}" @endif>
				<div class="image"></div>
			</div>
		</div>
		<div class="middle-part" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color_3 !!}" @endif>
			<div class="shadow">
				<div class="text" @if(isset($widget)) style="color: {!! $widget->tab_text_color_2 !!}" @endif>OR</div>
			</div>
		</div>
		<div class="right-part">
			<div class="text" @if(isset($widget)) style="color: {!! $widget->tab_text_color !!}" @endif>
				Voice Message
			</div>
			<div class="image-cont" @if(isset($widget)) style="background-color: {!! $widget->tab_bg_color !!}" @endif>
				<div class="image"></div>
			</div>
		</div>
	</div>
</div>