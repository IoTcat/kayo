{%- if theme.fancybox -%}
  {%- set fancybox_js = 'fancybox/jquery.fancybox.pack.js' -%}
{%- endif -%}
{%- if theme.mermaid -%}
  {%- set mermaid_js = 'mermaid/mermaid.min.js' -%}
{%- endif -%}

{%-
  set js_libs = {
    slideout: 'slideout/slideout.js',
    fancybox: fancybox_js,
    nprogress: nprogress_js,
    iziToast: 'iziToast/iziToast.min.js',
    iziModal: 'iziModal/iziModal.min.js',
    mermaid: mermaid_js,
  }
-%}

{%- for lib in js_libs -%}
  {%- if lib -%}
    <script type="text/javascript" src="{{ theme.cdnurl }}/lib/{{ lib }}"></script>
  {%- endif -%}
{%- endfor -%}
