{%- if not is_home() and toc(page.content) and theme.toc -%}
  <style>.toc-level-2 > .toc-child {display: none !important; }</style>
  <div class="post-toc" id="post-toc">
    <h2 class="post-toc-title">{{ __('posts.toc') }}</h2>
    <div class="post-toc-content">
      {{ toc(page.content, {list_number: false}) }}
    </div>
  </div>
  <script>var arr = [];var ts = '';if($('.post-toc-content').children().length>1){var el = '.post-toc-content';ts = ($(el).children('ol')[0].outerHTML);}else{var el = '.toc';};for(var i = 0; i < $(el).children('li').length; i++){arr.push($(el).children('li')[i].outerHTML);}; arr.splice(arr.length / 2, 0, '</span><span class=".en">');arr.unshift(ts);arr.unshift('<span class=".zh">');arr.push('</span>');$(el).html(arr.join(''));</script>
{%- endif -%}
