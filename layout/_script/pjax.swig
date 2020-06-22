{%- if theme.pjax.enable -%}
<script src="https://cdn.jsdelivr.net/npm/pjax/pjax.js"></script>
<script>
  window.pjax = new Pjax({
    elements: 'a[href]:not([href^="#"]):not([href="javascript:void(0)"])',
    selectors: ["head title, #main", "#footer"],
  });


  /* 第一次载入页面加载的函数 */
  pjax_ini = () => {
    
     /* 关闭侧边栏 */
     window.slideout.close();

     if(page_obj.comments == "true"){
        {%- if theme.valine.enable -%}
        pjax_valine();
        {%- endif -%}
     }
     {%- if theme.google_analytics -%}
       pjax_google_analytics();
     {%- endif -%}
  };

  /* 第一次 执行 */
  pjax_ini();


  {%- if theme.pjax.loadingbar -%}
    {%- include "loading-bar.swig" -%}
  {%- endif -%}


  /* Pjax 开始时，重新加载的函数 */
  document.addEventListener("pjax:send", function () {
    {%- if theme.pjax.loadingbar -%}
      loadingbarStart(); 
    {%- endif -%}

  });


  /* Pjax 完成后，重新加载的函数 */
  document.addEventListener("pjax:complete", function () {
    /* 重载带data-pjax的script，或者.pjax-reload属性内容的script */
    $("script[data-pjax], .pjax-reload script").each(function () {
        $(this).parent().append($(this).remove());
    });
    pjax_ini(); 
    {%- if theme.pjax.loadingbar -%}
      loadingbarStop();
    {%- endif -%}
  });


  /* Pjax 出错，执行的函数 */
  document.addEventListener("pjax:error", function () {
    
  });

</script>
{%- endif -%}
