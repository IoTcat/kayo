{%- extends "_layout.swig" -%}
{%- import '_macro/post.swig' as post_template -%}

{%- block title -%} {{ page.title }} - {{ config.title }} {%- endblock -%}

{%- block content -%}
  {{ post_template.render(page) }}

  {%- if theme.readingTime -%}
  <script>$(()=>{var p = window.location.pathname;setTimeout(()=>{if(window.location.pathname == p)tips.show({
        title: 'tips',
        position: 'topRight',
        message: ((page.tran.getLang() == 'zh')?"此文章预计阅读 {{ readingTime(page.content, '分钟', 300) }}哦~": "Read this page will spend around  {{ readingTime(page.content, ' minutes', 150) }}~")
  })}, 6000)})</script>
  {%- endif -%}
{%- endblock -%}

