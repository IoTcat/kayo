{%- extends "_layout.swig" -%}
{%- import '_macro/post.swig' as post_template -%}

{%- block title -%} {{ page.title }} - {{ config.title }} {%- endblock -%}

{%- block content -%}
  {{ post_template.render(page) }}

  {%- if theme.readingTime -%}
  <script>$(()=>{setTimeout(()=>{iziToast.show({
        title: 'tips',
        position: 'topRight',
        message: "此文章预计阅读 {{ readingTime(page.content, '分钟', 150) }}哦~"
  })}, 3000)})</script>
  {%- endif -%}
{%- endblock -%}

