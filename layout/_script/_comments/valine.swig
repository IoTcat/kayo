{%- if theme.valine.enable -%}
{% set valine_js_url = '//cdn.jsdelivr.net/gh/HCLonely/Valine@1.4.14/dist/Valine.min.js' %}
<script src="{{ valine_js_url }}"></script>
<style>
/* 背景图片 */
#veditor {
  background-image: url({{ theme.valine.background }});
  background-size: contain;
  background-repeat: no-repeat;
  background-position: right;
  background-color: rgba(255, 255, 255, 0);
  resize: vertical
}

/* 头像旋转 */
img.vimg {
  transition: all 1s   /* 旋转时间为 1s */
}
img.vimg:hover {
  transform: rotate(360deg);
  -webkit-transform: rotate(360deg);
  -moz-transform: rotate(360deg);
  -o-transform: rotate(360deg);
  -ms-transform: rotate(360deg);
}


/* 盒子模式 */
#vcomments .vcards .vcard {
  padding: 15px 20px 0 20px;
  border-radius: 10px;
  margin-bottom: 15px;
  box-shadow: 0 0 4px 1px rgba(0, 0, 0, .12);
  transition: all .3s
}

#vcomments .vcards .vcard:hover {
  box-shadow: 0 0 8px 3px rgba(0, 0, 0, .12)
}

#vcomments .vcards .vcard .vh .vcard {
  border: none;
  box-shadow: none;
}


</style>
<script>
    new Valine({
      el: '#vcomments',
      appId: '{{ theme.valine.appId }}',
      appKey: '{{ theme.valine.appKey }}',
      master: '{{ theme.valine.masterEmailMd5 }}',   //博主邮箱md5
      tagMeta: ["博主","小伙伴","访客"],     //标识字段名
      friends:  [{{ theme.valine.friendsEmailMd5 }}],  //小伙伴邮箱Md5
      metaPlaceholder: {"nick":"昵称/QQ号","mail":"邮箱（完全保密）"},
      placeholder: "填写邮箱可以及时收到回复哦(●'◡'●)",
      enableQQ: true,
      emojiCDN: '//i0.hdslb.com/bfs/emote/',
      emojiMaps: {
        "tv_doge": "6ea59c827c414b4a2955fe79e0f6fd3dcd515e24.png",
        "tv_亲亲": "a8111ad55953ef5e3be3327ef94eb4a39d535d06.png",
        "tv_偷笑": "bb690d4107620f1c15cff29509db529a73aee261.png",
        "tv_再见": "180129b8ea851044ce71caf55cc8ce44bd4a4fc8.png",
        "tv_冷漠": "b9cbc755c2b3ee43be07ca13de84e5b699a3f101.png",
        "tv_发怒": "34ba3cd204d5b05fec70ce08fa9fa0dd612409ff.png",
        "tv_发财": "34db290afd2963723c6eb3c4560667db7253a21a.png",
        "tv_可爱": "9e55fd9b500ac4b96613539f1ce2f9499e314ed9.png",
        "tv_吐血": "09dd16a7aa59b77baa1155d47484409624470c77.png",
        "tv_呆": "fe1179ebaa191569b0d31cecafe7a2cd1c951c9d.png",
        "tv_呕吐": "9f996894a39e282ccf5e66856af49483f81870f3.png",
        "tv_困": "241ee304e44c0af029adceb294399391e4737ef2.png",
        "tv_坏笑": "1f0b87f731a671079842116e0991c91c2c88645a.png",
        "tv_大佬": "093c1e2c490161aca397afc45573c877cdead616.png",
        "tv_大哭": "23269aeb35f99daee28dda129676f6e9ea87934f.png",
        "tv_委屈": "d04dba7b5465779e9755d2ab6f0a897b9b33bb77.png",
        "tv_害羞": "a37683fb5642fa3ddfc7f4e5525fd13e42a2bdb1.png",
        "tv_尴尬": "7cfa62dafc59798a3d3fb262d421eeeff166cfa4.png",
        "tv_微笑": "70dc5c7b56f93eb61bddba11e28fb1d18fddcd4c.png",
        "tv_思考": "90cf159733e558137ed20aa04d09964436f618a1.png",
        "tv_惊吓": "0d15c7e2ee58e935adc6a7193ee042388adc22af.png",
      } 
    });
</script>

{%- endif -%}
