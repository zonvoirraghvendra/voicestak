$(document).ready(function(){var e=new ZeroClipboard($(".embed-copy"));e.on("beforecopy",function(t){var n=function(e,t){return text=$(e.target).parents(".modal").find(".embed-modal").val(),t(text)};n(t,function(t){e.setText(t)})})});