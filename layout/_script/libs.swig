{%- if theme.fancybox -%}
  {%- set fancybox_js = 'fancybox/jquery.fancybox.pack.js' -%}
{%- endif -%}

{%-
  set js_libs = {
    slideout: 'slideout/slideout.js',
    fancybox: fancybox_js,
    nprogress: nprogress_js,
    iziToast: 'iziToast/iziToast.min.js',
    iziModal: 'iziModal/iziModal.min.js',
  }
-%}

{%- for lib in js_libs -%}
  {%- if lib -%}
    <script type="text/javascript" src="{{ url_for('lib') }}/{{ lib }}"></script>
  {%- endif -%}
{%- endfor -%}
