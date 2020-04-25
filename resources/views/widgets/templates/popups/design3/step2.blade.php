<div style="display: none;" class="display_div d3">
    <div id="popup30" class="lightbox" @if(isset($widget)) style="background-color: {!! $widget->widget_bg_color !!}" @endif>
        <section class="popup popup-two popup25 popup30">
            <h2 class="voice" @if(isset($widget)) style="background-color: {!! $widget->widget_main_headline_bg_color !!} ; border-color: {!! $widget->widget_main_headline_bg_color !!} ; color: {!! $widget->widget_main_headline_color !!}" @endif>Send Us a Voice Message</h2>
            <h3 @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>
                @if(isset($widget) && $widget->widget_main_headline != '')
                    {!! $widget->widget_main_headline !!}
                @else
                    We would love to hear from you!<br> Please record your message.
                @endif
            </h3>
            <strong class="sub-title" @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Is Your Microphone On?</strong>
            <div class="start-video audioFlash" @if(isset($widget)) style="border-color: {!! $widget->widget_buttons_bg_color !!}" @endif>
                <a>
                    <div class="start-box">
                        <img src="/assets/img/img9.png" alt="">
                        <strong class="title">Start</strong>
                    </div>
                </a>
            </div>
            <ol class="add">
                <li @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Record</li>
                <li @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Listen</li>
                <li @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Send</li>
            </ol>
            @if(isset($widget->remove_powered_by) && $widget->remove_powered_by == 0)
                <div id="powered-by">
                    <strong class="powered-by" @if(isset($widget)) style="color: {!! $widget->widget_text_color !!}" @endif>Powered by <a href="http://voicestak.com" target="_blank" @if(isset($widget)) style="color: {!! $widget->widget_buttons_bg_color !!}" @endif>VoiceStak</a></strong>
                </div>
            @endif
        </section>
    </div>

    @if(isset($widget))
        {!! '<style>.popup-two ol li:before { background-color: ' .$widget->widget_buttons_bg_color . '; color: ' .$widget->widget_buttons_text_color . '} </style>' !!}
    @endif
</div>