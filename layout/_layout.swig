<!DOCTYPE html>
<html lang="{{ config.language }}">
  <head>
    {%- include '_partial/head.swig' %}
    <title>{%- block title -%}{%- endblock -%}</title>
  </head>

  <body>
    {%- include '_partial/slideout.swig' -%}
    <div class="container" id="mobile-panel">
      <header id="header" class="header">
        {%- include '_partial/header.swig' -%}
      </header>

      <main id="main" class="main">
        <div class="content-wrapper">
          <div id="content" class="content">
            {%- block content -%}{%- endblock -%}
          </div>
          {%- include '_partial/comments.swig' -%}
        </div>
      </main>

      <footer id="footer" class="footer">
      <script>
        page_obj = {
          layout: "{{ page.layout }}",
          comments: "{{ page.comments }}"
        };
      </script>
        {%- include '_partial/footer.swig' -%}
      </footer>

      <div class="back-to-top" id="back-to-top">
        <i class="iconfont icon-up"></i>
      </div>
    </div>

    {%- include '_script/comments.swig' -%}

    {#- Ushio-JS -#}
    {%- if theme.ushio -%}
        {%- include '_script/ushio.swig' -%}
    {%- endif -%}

    {%- include '_script/libs.swig' -%}
    {%- include '_script/theme.swig' -%}
    {%- include '_script/aplayer.swig' -%}
    {%- include '_script/pjax.swig' -%}
 </body>
</html>
