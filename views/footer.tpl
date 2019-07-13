<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="http://cdn.rawgit.com/eternicode/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js"></script>
<script src="http://cdn.rawgit.com/niftylettuce/bootstrap-datepicker-mobile/9999ca720ebf89600bda1659c96a291dc447ff39/bootstrap-datepicker-mobile.js"></script>
<script type="text/javascript">
  function doSearch(){
    var query = document.getElementById('query').value;
    var after = document.getElementById('after').value;
    var before = document.getElementById('before').value;
    var dir = document.getElementById('dir').value;
    var sort = document.getElementById('sort').value;
    var ascending = document.getElementById('ascending').value;

    var url = "results?query=" + query + "&after=" + after + "&before=" + before + "&dir=" + dir + "&sort=" + sort + "&ascending=" + ascending;
    document.location.href = url;
  };

  $(function(){
    $('#dropdownMenu1').parent().on('hide.bs.dropdown', function(e){
        e.preventDefault();
    });
    $("#btnSearch").click(function(){
        doSearch();
    });
    $("#btnSearch2").click(function(){
        doSearch();
    });
    $("#query").keydown(function(e){
      if(e.keyCode == 13){
        doSearch();
      }
    });
  });
</script>

</body>
</html>
