{#- Website mata -#}
{%- include "./_head/meta.swig" -%}

{#- Website rss -#}
{%- if theme.rss === 'default' and config.feed and config.feed.path -%}
  {{ feed_tag(config.feed.path) }}
{%- elif theme.rss -%}
  {{ feed_tag(theme.rss) }}
{%- else -%}
  {{ feed_tag('atom.xml') }}
{%- endif -%}

{#- Website favicon -#}
{%- if theme.favicon -%}
  <link rel="shortcut icon" type="image/x-icon" href="{{ url_for(theme.favicon) }}?v={{ theme.version }}" />
{%- endif -%}



{#- Ushio-JS -#}
{%- if theme.ushio -%}
  {%- include "./_head/ushio.swig" -%}
{%- else -%}
  <script type="text/javascript" src="{{ theme.cdnurl }}/lib/jquery/jquery.min.js"></script>
{%- endif -%}

{#- iziModal -#}
<!--<link rel="stylesheet" type="text/css" href="{{ theme.cdnurl }}/lib/iziModal/iziModal.min.css" />-->

{#- iziToast -#}
<!--<link rel="stylesheet" type="text/css" href="{{ theme.cdnurl }}/lib/iziToast/iziToast.min.css" />-->

{#- aplayer -#}
{%- if theme.aplayer.enable -%}
  <script>
    if(window.screen.width < 600) document.write('<link rel="stylesheet" href="https://cdn.yimian.xyz/ushio-js/ushio-js.mobile.min.css">');
    else document.write('<link rel="stylesheet" href="https://cdn.yimian.xyz/ushio-js/ushio-js.min.css">');
  </script>
{%- endif -%}

{%- if theme.shaky -%}
  <link rel="stylesheet" media="none" onload="this.media='all'" type="text/css" href="https://cdn.yimian.xyz/shaky/shaky.css"> 
{%- endif -%}

{#- Canonical, good for google search engine -#}
<link rel="canonical" href="{{ config.url }}/{{ page.canonical_path.replace('index.html', '') }}"/>

{#- Fancybox styling -#}
{%- if theme.fancybox -%}
  <link rel="stylesheet" media="none" onload="this.media='all'" type="text/css" href="{{ theme.cdnurl }}/lib/fancybox/jquery.fancybox.css" />
{%- endif -%}

{#- MathJax (LaTeX) support -#}
{%- if theme.latex -%}
  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({ tex2jax: { inlineMath: [['$','$'], ['\\(','\\)']] } });
  </script>
  <script type="text/javascript" async src="https://cdn.yimian.xyz/ajax/libs/mathjax/2.7.5/MathJax.js?config=TeX-MML-AM_CHTML"></script>
{%- endif -%}

{#- Theme styling -#}
<link rel="stylesheet" type="text/css" href="{{ theme.cdnurl }}/css/style.css?v={{ theme.version }}" />

{#- Analytics and push -#}
{%- if not env.debug -%}
  {%- include "../_script/analytics.swig" -%}
  {%- include "../_script/push.swig" -%}
{%- endif -%}

{#- LeanCloud Counter -#}
{%- include "../_script/counter.swig"%}

{%- set themeConfig = { leancloud: theme.leancloud, toc: theme.toc, fancybox: theme.fancybox, pjax: theme.pjax, latex: theme.latex } -%}
<script>
  window.config = {{ JSON.stringify(themeConfig) }};
</script>
