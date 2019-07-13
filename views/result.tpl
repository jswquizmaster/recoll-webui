%import shlex, unicodedata, os
    <article class="search-result row">
      <div class="col-xs-12 col-sm-12 col-md-3">
        <a href="#" title="Lorem ipsum" class="thumbnail"><img src="http://lorempixel.com/250/140/people" alt="Lorem ipsum" /></a>
      </div>
      <div class="col-xs-12 col-sm-12 col-md-2">
        <ul class="meta-search">
          <li><i class="glyphicon glyphicon-calendar"></i> <span>{{d['date']}}</span></li>
          <li><i class="glyphicon glyphicon-time"></i> <span>{{d['time']}}</span></li>
          <li><i class="glyphicon glyphicon-tags"></i> <span>Finanzen</span></li>
        </ul>
      </div>
      <div class="col-xs-12 col-sm-12 col-md-7 excerpet">
        <h3><a href="#" title="">{{d['label']}}</a></h3>
        <p>{{!d['snippet']}}</p>
        <span class="download"><a href="download/{{i}}?{{query_string}}" title="Lorem ipsum"><i class="glyphicon glyphicon-download"></i></a></span>
      </div>
      <span class="clearfix borda"></span>
    </article>

