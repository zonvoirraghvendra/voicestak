<div style="display: none;" class="display_div d2">
    <div id="popup19" class="lightbox" @if(isset($widget)) style="background-color: {!! $widget->widget_bg_color !!}" @endif>
    	<section class="popup popup-three popup19">
        	<h2 class="border audio" @if(isset($widget)) style="background-color: {!! $widget->widget_main_headline_bg_color !!} ; border-color: {!! $widget->widget_buttons_bg_color !!} ; color: {!! $widget->widget_main_headline_color !!}" @endif>Send Us a Voice Message</h2>
        	<ol>
            	<li>Adjust your microphone volume </li>
                <li>Click Allow to enable your microphone</li>
            </ol>
            <div class="flash-box"><img src="/assets/img/img-flash.png" alt=""></div>
            <h3>Press Here To Start Recording</h3>

            @if(isset($widget->remove_powered_by) && $widget->remove_powered_by == 0)
                <div id="powered-by">
                    <strong class="powered-by" @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Powered by <a href="http://voicestak.com" target="_blank" @if(isset($widget)) style="color: {!! $widget->widget_buttons_bg_color !!}" @endif>VoiceStak</a></strong>
                </div>
            @endif
        </section>
    </div>
</div>