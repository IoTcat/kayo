<script src="{{ theme.cdnurl }}/lib/pjax/pjax.min.js"></script>
<script>
{%- if theme.pjax.enable -%}
  window.pjax = new Pjax({
    elements: 'a[href]:not([href^="#"]):not([href="javascript:void(0)"])',
    selectors: ["head title, #main", "#footer"],
  });
{%- endif -%}

    /* lazyload */
    window.imageLazyLoadSetting = {
        isSPA: false,
        processImages: null,
    };
    
     window.addEventListener("load",function(){var t=/\.(gif|jpg|jpeg|tiff|png)$/i,r=/^data:image\/[a-z]+;base64,/;Array.prototype.slice.call(document.querySelectorAll("img[data-original]")).forEach(function(a){var e=a.parentNode;"A"===e.tagName&&(e.href.match(t)||e.href.match(r))&&(e.href=a.dataset.original)})});

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

     {%- if theme.mermaid -%}
       mermaid.init(undefined, $(".mermaid"));
     {%-endif-%}


     /* lazy load */
     !function(n){n.imageLazyLoadSetting.processImages=o;var i=n.imageLazyLoadSetting.isSPA,r=Array.prototype.slice.call(document.querySelectorAll("img[data-original]"));function o(){i&&(r=Array.prototype.slice.call(document.querySelectorAll("img[data-original]")));for(var t,e,a=0;a<r.length;a++)t=r[a],e=void 0,0<=(e=t.getBoundingClientRect()).bottom&&0<=e.left&&e.top<=(n.innerHeight||document.documentElement.clientHeight)&&function(){var t,e,n,i,o=r[a];t=o,e=function(){r=r.filter(function(t){return o!==t})},n=new Image,i=t.getAttribute("data-original"),n.onload=function(){t.src=i,e&&e()},n.src=i}()}o(),n.addEventListener("scroll",function(){var t,e;t=o,e=n,clearTimeout(t.tId),t.tId=setTimeout(function(){t.call(e)},500)})}(this);
     !function(){var t=/\.(gif|jpg|jpeg|tiff|png)$/i,r=/^data:image\/[a-z]+;base64,/;Array.prototype.slice.call(document.querySelectorAll("img[data-original]")).forEach(function(a){var e=a.parentNode;"A"===e.tagName&&(e.href.match(t)||e.href.match(r))&&(e.href=a.dataset.original)})}();
  };

  /* 第一次 执行 */
  pjax_ini();


{%- if theme.pjax.enable -%}
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
    page.tran.setLang();
  });


  /* Pjax 出错，执行的函数 */
  document.addEventListener("pjax:error", function () {
    
  });

{%- endif -%}
</script>
