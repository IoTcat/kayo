{%- if theme.aplayer.enable -%}
{% set aplayer_js_url = '/lib/aplayer/aplayer.min.js' %}
<script src="{{ theme.cdnurl }}{{ aplayer_js_url }}"></script>

<script>
	$.post("{{ theme.aplayer.api }}?type=playlist&id={{ theme.aplayer.playlist }}&limit={{ theme.aplayer.limit }}&random={{ theme.aplayer.random }}", function(res){
		$('body').append('<div class="aplayer-footer"><div class="ap-f" id="ap-f"></div></div>');
	    var a = new APlayer({
	        element:document.getElementById("ap-f"),
	        autoplay: {{ theme.aplayer.autoplay }},
	        fixed:true,
	        loop:"{{ theme.aplayer.loop }}",
	        order:"list",
	        listFolded:true,
	        showlrc:3,
	        theme:"{{ theme.aplayer.color }}",
	        listmaxheight:"200px",
	        music:res
	    });
	    window.aplayers || (window.aplayers = []),
	    window.aplayers.push(a);
	    window.aplayers[0].lrc.hide();
	    
	    window.aplayers[0].on('play', function () {
			window.aplayers[0].lrc.show();
		});
	    window.aplayers[0].on('pause', function () {
			window.aplayers[0].lrc.hide();
		});
	});
</script>

{%- endif -%}
