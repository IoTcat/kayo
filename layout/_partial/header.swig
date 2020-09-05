<div class="logo-wrapper">
  <a href="{{ url_for('.') }}" class="logo">{{ config.title }}</a>
</div>

<nav class="site-navbar">
  {%- if theme.menu -%}
    <ul id="menu" class="menu">
    {%- for name, obj in theme.menu -%}
      <li class="menu-item">
        <a id="menu-{{ name }}" class="menu-item-link" href="{{ url_for(theme.menu[name].path) }}">
          {%- set itemName = __('menu.' + name.toLowerCase()) -%}
          {%- if itemName.startsWith('menu') -%}
            <span class=".en">{{ name }}</span><span class=".zh">{{ theme.menu[name].zh }}</span>
          {%- else -%}
            <span class=".en">{{ name }}</span><span class=".zh">{{ theme.menu[name].zh }}</span>
          {%- endif -%}
        </a>

      {%- if theme.menu[name].submenus -%}
        <script>
          $("#menu-{{ name }}").click(function(){
            tips.question({
			    timeout: 20000,
			    close: false,
			    overlay: true,
			    displayMode: 'once',
			    //id: 'question',
			    zindex: 999,
			    title: '{{ name }}',
			    message: '',
			    position: 'center',
			    buttons: [
			    {%- for subname, subobj in theme.menu[name].submenus -%}
                	['<button><b>'+((page.tran.getLang() != 'zh')?'{{ subname }}':'{{ subobj.zh }}')+'</b></button>', function (instance, toast) {
			 
			            instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
                        if("{{ theme.menu[name].submenus[subname].pjax }}" == "true")
			 			  pjax.loadUrl("{{ url_for(theme.menu[name].submenus[subname].path) }}");
                        else
                            window.location.href="{{ theme.menu[name].submenus[subname].path }}";
			        }, true],
			    {%- endfor -%}
			    ['<button><b>close</b></button>', function (instance, toast) {
			
			            instance.hide({ transitionOut: 'fadeOut' }, toast, 'button');
			        }, true],
			    ]
			});
          });
        </script>
      {%- endif -%}
      </li>
    {%- endfor -%}
 
    </ul>
  {%- endif -%}
</nav>
