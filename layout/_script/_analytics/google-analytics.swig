{%- if theme.google_analytics -%}
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id={{ theme.google_analytics }}" data-pjax></script>
<script>
pjax_google_analytics = () => {
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', '{{ theme.google_analytics }}');
}
</script>
{%- endif -%}
