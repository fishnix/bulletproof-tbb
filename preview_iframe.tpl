<head>
    <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>
    <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
    <meta name="Powered-By" content="Serendipity v.{$head_version}" />

  <link rel="stylesheet" type="text/css" href="{$serendipityHTTPPath}templates/{$template}/tbb_style.min.css" />

  <link href="https://fonts.googleapis.com/css?family=Crimson+Text" rel="stylesheet">
  <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/dist/css/bootstrap.min.css" />
  <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/dist/css/fontawesome.min.css" />
  <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/dist/css/component-chosen.min.css" />

  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" crossorigin="anonymous"></script>
  <script src="{$serendipityHTTPPath}templates/{$template}/dist/js/bootstrap.bundle.min.js"></script>
  <script src="{$serendipityHTTPPath}templates/{$template}/dist/chosen-js/chosen.jquery.min.js"></script>

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
