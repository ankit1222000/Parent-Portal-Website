<script type="text/javascript">
jQuery(
  function($)
  {
       var q=encodeURIComponent('${studentBean.getAddress()},${studentBean.getCity()},${studentBean.getCountry()}');
       $('#map')
        .attr('src',
             'https://www.google.com/maps/embed/v1/place?key=AIzaSyDZATmqSMXBcfrXXoplGGh2i_w4pcnzCPA&q='+q);

  }
);
</script>