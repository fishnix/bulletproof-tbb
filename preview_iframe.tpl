    <head>
        <title>{$CONST.SERENDIPITY_ADMIN_SUITE}</title>
        <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
        <meta name="Powered-By" content="Serendipity v.{$head_version}" />

        <!-- Bootstrap -->
        <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/bootstrap-3.3.4-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/bootstrap-3.3.4-dist/css/bootstrap-theme.min.css">
        <!-- -->

        <!-- FontAwesome --->
        <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/font-awesome-4.3.0/css/font-awesome.min.css">
        <!-- -->

        <!-- additional colorset stylesheet -->
        <link rel="stylesheet" type="text/css" href="{$serendipityHTTPPath}templates/{$template}/tbb_style.css" />

        <script src="{$serendipityHTTPPath}templates/{$template}/bootstrap-3.3.4-dist/js/bootstrap.min.js" async></script>
        <script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en" defer></script>

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
