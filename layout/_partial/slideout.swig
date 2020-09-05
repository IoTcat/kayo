<div id="mobile-navbar" class="mobile-navbar">
  <div class="mobile-header-logo">
    <a href="{{ url_for('.') }}" class="logo">{{ config.title }}</a>
  </div>
  <div class="mobile-navbar-icon">
    <span></span>
    <span></span>
    <span></span>
  </div>
  <div class="loading-bar">
    <div class="progress"></div>
  </div>
</div>

<nav id="mobile-menu" class="mobile-menu slideout-menu">
  <ul class="mobile-menu-list">
    {%- for name, obj in theme.menu -%}
     <div id="mobile-menu-{{ name }}">
      <a href="{{ url_for(theme.menu[name].path) }}">
        <li class="mobile-menu-item">
          {%- set itemName = __('menu.' + name.toLowerCase()) -%}
          {%- if itemName.startsWith('menu') -%}
            <span class=".en">{{ name }}</span><span class=".zh">{{ theme.menu[name].zh }}</span>
          {%- else -%}
            <span class=".en">{{ name }}</span><span class=".zh">{{ theme.menu[name].zh }}</span>
          {%- endif -%}
        </li>
      </a>
      {%- if theme.menu[name].submenus -%}
        <ul class="sub-menu" style="display: none;"> 
          {%- for subname, subobj in theme.menu[name].submenus -%}
            <li>
              <a href="{{ url_for(theme.menu[name].submenus[subname].path) }}">
                <span class=".en">{{ subname }}</span><span class=".zh">{{ subobj.zh }}</span>
              </a>
            </li>
          {%- endfor -%}
        </ul>
      <script>$('#mobile-menu-{{ name }}').click(function(){
          $("#mobile-menu-{{ name }} ul").toggle();
      })</script>
      {%- endif -%}
     </div>
    {%- endfor -%}
  </ul>
</nav>
