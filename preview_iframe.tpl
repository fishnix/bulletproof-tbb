    <head>
        <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>
        <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
        <meta name="Powered-By" content="Serendipity v.{$head_version}" />

      <link rel="stylesheet" type="text/css" href="{$serendipityHTTPPath}templates/{$template}/tbb_style.min.css" />

      <link href="https://fonts.googleapis.com/css?family=Crimson+Text" rel="stylesheet">
      <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/bootstrap/dist/css/bootstrap.min.css" />
      <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/font-awesome-4.7.0/css/font-awesome.min.css" />
      <link rel="stylesheet" type="text/css" href="{$serendipityHTTPPath}templates/{$template}/chosen-1.7.0/chosen.min.css" />

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
      <script src="{$serendipityHTTPPath}templates/{$template}/bootstrap/dist/js/bootstrap.min.js"></script>

      <script type="text/javascript">
          window.onload = function() {ldelim}
            parent.document.getElementById('serendipity_iframe').style.height = document.getElementById('content').offsetHeight
                                                                              + parseInt(document.getElementById('content').style.marginTop)
                                                                              + parseInt(document.getElementById('content').style.marginBottom)
                                                                              + 'px';
            parent.document.getElementById('serendipity_iframe').scrolling    = 'no';
            parent.document.getElementById('serendipity_iframe').style.border = 0;
          {rdelim}
      </script>
    </head>

    <body style="padding: 0px; margin: 0px;">
    <div class="container">
      <div class="row">
        <div class="content" id="content" style="padding: 5px; margin: 0px;">
          {$preview}
        </div>
      </div>
    </div>
    </body>
