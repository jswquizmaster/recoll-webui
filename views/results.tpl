%include header title=": " + query['query']+" ("+str(nres)+")"
%include search query=query, dirs=dirs, sorts=sorts
<div class="container">
  <hgroup class="mb20">
    <h1>Search Results</h1>
    <h2 class="lead"><strong class="text-danger">{{nres}}</strong> results were found for the search for <strong class="text-danger">{{qs}}</strong></h2>
  </hgroup>

  <section class="col-xs-12 col-sm-6 col-md-12">
%for i in range(0, len(res)):
    %include result d=res[i], i=i, query=query, config=config, query_string=query_string, hasrclextract=hasrclextract
%end
  </section>
</div>
%include footer
<!-- vim: fdm=marker:tw=80:ts=4:sw=4:sts=4:et:ai
-->
