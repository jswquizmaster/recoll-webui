%import re
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <div class="input-group" id="adv-search">
        <input type="text" class="form-control" id="query" value="{{query['query']}}" autofocus placeholder="Search for documents" />
          <div class="input-group-btn">
            <div class="btn-group" role="group">
              <div class="dropdown dropdown-lg">
                <button type="button" id="dropdownMenu1" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><span class="caret"></span></button>
                <div class="dropdown-menu dropdown-menu-right" role="menu">
                  <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label for="datesto">From</label>
                      <div class='input-group date'>
                        <span class="input-group-addon">
                          <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                        <input type='text' id="after" value="{{query['after']}}" class="date-picker form-control" data-date-format="yyyy-mm-dd" placeholder="YYYY-MM-DD"/>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="datesto">To</label>
                      <div class='input-group date'>
                        <span class="input-group-addon">
                          <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                        <input type='text' id="before" value="{{query['before']}}" class="date-picker form-control" data-date-format="yyyy-mm-dd" placeholder="YYYY-MM-DD"/>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="folder">Folder</label>
                      <select id="dir" class="form-control">
                      %for d in sorted(dirs, key=str.lower):
                        %space = "&nbsp;" * (4 * d.count('/'))
                        %if d in query['dir']:
                        %selected = "selected"
                        %else:
                        %selected = ""
                        %end
                        <option {{selected}} value="{{d}}">{{!space}}{{re.sub('.+/','', d)}}</option>
                      %end                      
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="sortby">Sort by</label>
                      <select id="sort" class="form-control">
                      %for s in sorts:
                        %if query['sort'] == s[0]:
                          <option selected value="{{s[0]}}">{{s[1]}}</option>
                        %else:
                          <option value="{{s[0]}}">{{s[1]}}</option>
                        %end
                      %end
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="order">Order</label>
                      <select id="ascending" class="form-control">
                      %if int(query['ascending']) == 1:
                        <option value="0">Descending</option>
                        <option value="1" selected>Ascending</option>
                      %else:
                        <option value="0" selected>Descending</option>
                        <option value="1">Ascending</option>
                      %end
                      </select>
                    </div>
                    <button type="button" id="btnSearch2" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                  </form>
                </div>
              </div>
              <button type="button" id="btnSearch" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
