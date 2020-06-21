{#- Social Links -#}
{%- include "./_footer/social.swig" -%}

<div class="copyright">

  {%- if theme.valine.statistic -%}
    {%- if is_post() or is_page() -%}
  <span id="/{{ page.path }}" class="statistic leancloud_visitors">
    <em>Visitors </em> <i class="leancloud-visitors-count">??</i> 
    <span class="division"> |</span>
    <em>Reading </em> {{ readingTime(page.content, 'min', 150) }}
  </span>
  <br>
  {%- endif -%}
  {%- endif -%}

  <span class="power-by">
    {{ __('footer.powered', '<a class="hexo-link" href="https://hexo.io/">Hexo</a>') }}
  </span>
  <span class="division">|</span>
  <span class="theme-info">
    {{ __('footer.theme') }} - 
    <a class="theme-link" href="https://github.com/iotcat/kayo">Kayo</a>
  </span>

  <span class="copyright-year">
    {%- set current = date(Date.now(), "YYYY") -%}
    &copy;
    {%- if theme.since and theme.since != current -%}
      {{ theme.since }} - {{ current }}
    {%- else -%}
      {{ current }}
    {%- endif -%} 

    <span class="heart shaky">
      <i class="iconfont icon-heart"></i>
    </span>
    <span class="author">{{ config.author }}</span>
  </span>
</div>
