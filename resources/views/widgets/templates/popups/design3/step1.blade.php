<div class="display_div d3">
    <div id="popup23" class="lightbox" @if(isset($widget)) style="background-color: {!! $widget->widget_bg_color !!}" @endif>
        <section class="popup popup-seven popup23">
            <h2 @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>
                @if(isset($widget) && $widget->widget_main_headline != '')
                    {!! $widget->widget_main_headline !!}
                @else
                    We want to hear from you!<br> Leave us a voice or video message.
                @endif
            </h2>
            <div class="popup-frame">
                <div class="box">
                    <div class="img-holder add" @if(isset($widget)) style="border-color: {!! $widget->widget_buttons_bg_color !!}" @endif>
                        <div class="img-box"><img src="/assets/img/img6.png" alt=""></div>
                    </div>
                    <strong class="sub-title" @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Record Your</strong>
                    <h3 @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Voice Message</h3>
                    <a id="start-voice-3" class="btn-start" @if(isset($widget)) style="background-color: {!! $widget->widget_buttons_bg_color !!} ; color: {!! $widget->widget_buttons_text_color !!} !important;" @endif>Start Recording</a>
                </div>
                <strong class="or">Or</strong>
                <div class="box">
                    <div class="img-holder" @if(isset($widget)) style="border-color: {!! $widget->widget_buttons_bg_color !!}" @endif>
                        <div class="img-box"><img src="/assets/img/img7.png" alt=""></div>
                    </div>
                    <strong class="sub-title" @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Record Your</strong>
                    <h3 @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Video Message</h3>
                    <a id="start-video-3" class="btn-start" @if(isset($widget)) style="background-color: {!! $widget->widget_buttons_bg_color !!} ; color: {!! $widget->widget_buttons_text_color !!} !important;" @endif>Start Recording</a>
                </div>
            </div>

            @if(isset($widget->remove_powered_by) && $widget->remove_powered_by == 0)
                <div id="powered-by">
                    <strong class="powered-by" @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Powered by <a href="http://voicestak.com" target="_blank" @if(isset($widget)) style="color: {!! $widget->widget_buttons_bg_color !!}" @endif>VoiceStak</a></strong>
                </div>
            @endif
        </section>
    </div>
</div>