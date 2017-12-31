{if $is_embedded != true}
  <!DOCTYPE html>
    <html lang="en-US" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>{$head_title|@default:$blogTitle}{if $head_subtitle} - {$head_subtitle}{/if}</title>
      <meta name="title" content="{$head_title|@default:$blogTitle}{if $head_subtitle} - {$head_subtitle}{/if}" />
      {serendipity_hookPlugin hook="frontend_header"}
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      {if $is_single_entry and not $is_preview}
        {if !empty($template_option.addthisfbimage) }<link rel="image_src" href="{$template_option.addthisfbimage}" />{/if}
      {/if}
      <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
      <meta name="Powered-By" content="Serendipity v.{$head_version}" />
      <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
      <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
      {if $entry_id}<link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />{/if}
      <link rel="shortcut icon" href="{$serendipityBaseURL}favicon.ico" />

      <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />
      <link rel="stylesheet" type="text/css" href="{$serendipityHTTPPath}templates/{$template}/tbb_style.css" />

      <link href="https://fonts.googleapis.com/css?family=Crimson+Text" rel="stylesheet">
      <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/bootstrap/dist/css/bootstrap.min.css" />
      <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/font-awesome-4.7.0/css/font-awesome.min.css" />
      <link rel="stylesheet" type="text/css" href="{$serendipityHTTPPath}templates/{$template}/chosen-1.7.0/chosen.min.css" />

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
      <script src="{$serendipityHTTPPath}templates/{$template}/bootstrap/dist/js/bootstrap.min.js"></script>
      <script src="{$serendipityHTTPPath}templates/{$template}/chosen-1.7.0/chosen.jquery.min.js"></script>

      <script src="https://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en" async></script>
      <script src="//s7.addthis.com/js/300/addthis_widget.js#pubid=budgetbabe&async=1"></script>
      <script src="{$serendipityHTTPPath}templates/{$template}/tbb.js"></script>

      {if $template_option.addthiswidget_loc == 'none' }
        /* Disable addthis */
      {else}
        {literal}
          <script>
            window.addThisLinkFilter = function(link, layer) {
              if (link.url && link.url.indexOf('/serendipity_admin.php') > -1) {
                return false;
              } else {
                return link;
              }
            };
          </script>
        {/literal}
      {/if}

      {if $template_option.additional_head_code_toggle == 'true'}
        {$template_option.additional_head_code}
      {/if}
    </head>

    <body>
      <h1 hidden>{$blogTitle}</h1>
  {else}
    {serendipity_hookPlugin hook="frontend_header"}
  {/if}

  {if $is_raw_mode != true}
    {if $template_option.leaderboard_code_toggle == 'true'}
    <div class="container-fluid">
      <div class="row text-center">
        <div class="col">
          {$template_option.leaderboard_code}
        </div>
      </div>
    </div>
    {/if}

    <!-- START Blog title container -->
    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-10 col-sm-8 col-md-6">
          <a class="homelinkimage" href="{$serendipityBaseURL}">
            <img alt="{$blogTitle}" class="img-fluid" src="{$template_option.headerimage}">
          </a>
        </div>
      </div>
    </div>
    <!-- END Blog title container -->

    <!-- START main navigation -->
    <div class="container-fluid">
      <nav class="navbar navbar-expand-md navbar-light main-nav">
        <div class="sr-only sr-only-focusable">
          <ul>
            {if $template_option.sitenavpos != 'none'}<li lang="en"><a href="{if $template_option.sitenavpos == 'left'}#sbsitenav{elseif $template_option.sitenavpos == 'right'}#sbsitenav{else}#sitenav{/if}">Skip to site navigation</a></li>{/if}
            <li lang="en"><a href="#content">Skip to blog entries</a></li>
            <li lang="en"><a href="{$serendipityBaseURL}index.php?/archive">Skip to archive page</a></li>
            <li lang="en"><a href="#serendipityRightSideBar">Skip to right sidebar</a></li>
          </ul>
        </div>
        <div class="row">
          <div class="col-12">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#s9y-navbar-collapse" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          </div>
        </div>
        <div class="collapse navbar-collapse" id="s9y-navbar-collapse">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col">
                {if $template_option.navbar == 'default'}
                <ul class="navbar-nav" id="sbsitenav">
                  {foreach from=$navlinks item="navlink" name="navbar"}
                  <li class="nav-item {if $currpage==$navlink.href}active{/if}">
                    <a class="nav-link" href="{$navlink.href}" title="{$navlink.title}">
                      {$navlink.title} {if $currpage==$navlink.href}<span class="sr-only">(current)</span>{/if}
                    </a>
                  </li>
                  {/foreach}
                </ul>
                {else if $template_option.navbar == 'smarty'}
                  {include file="custom_navbar.tpl"}
                {else}
                  {$template_option.rawnavbar}
                {/if}
              </div>
            </div>
          </div>
        </div>
      </nav>
    </div>
    <!-- END main navigation -->

    <!-- Main Content Container -->
    <div class="container">
       <div class="row justify-content-center">
        <section class="col-12 col-lg-8 content" id="content">
          {$CONTENT}
        </section>
        <aside id="serendipityRightSideBar" class="d-none d-lg-block col-lg-4">
          {if $rightSidebarElements > 0}{serendipity_printSidebar side="right"}{/if}
        </aside>
      </div>
    </div>
    <!-- Main Content Container END -->

    <!-- Footer Container -->
    <div class="container-fluid">
      <div class="d-flex flex-row justify-content-center">
        <footer>
          <div class="text-center">
            {if $footer_prev_page}
            <a href="{$footer_prev_page}" class="btn btn-secondary" role="button">Newer Posts</a>
            {/if}

            {if $footer_next_page}
            <a href="{$footer_next_page}" class="btn btn-secondary" role="button">Older Posts</a>
            {/if}
          </div>

          <div class="text-center">
            {if $template_option.footer_text_toggle == 'true'}
            <p>{$template_option.footer_text}</p>
            {/if}
            {if $template_option.counter_code_toggle == 'true'}
            <div class="counter_code">{$template_option.counter_code}</div>
            {/if}
            {if ($template_option.sitenavpos != 'none' and $template_option.sitenav_footer == 'true')}
            <div id="footer_sitenav">
              <ul>
                {foreach from=$navlinks item="navlink" name=navbar}
                <li{if $currpage == $navlink.href} class="currentpage"{/if}><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
                {/foreach}
              </ul>
            </div>
            {/if}
          </div>
        </footer>
      </div>
    </div>
    <!-- Footer Container END -->
  {serendipity_hookPlugin hook="frontend_footer"}
  {if $template_option.addthiswidget_loc == 'none' }
    /* Disable addthis */
  {else}
    {literal}
      <script type="text/javascript" async>
        var addthis_config = {
          data_track_addressbar: false,
          data_ga_property: 'UA-2676654-1',
          data_ga_social : true
        };
        var addthis_share = {
          url_transforms : {
            shorten: {
              twitter: 'bitly'
            }
          }
        };
      </script>
    {/literal}
  {/if}
  <script src="//platform.twitter.com/oct.js"></script>
  <script type="text/javascript">twttr.conversion.trackPid('l4iog');</script>
  <noscript>
    <img height="1" width="1" style="display:none;" alt="" src="https://analytics.twitter.com/i/adsct?txn_id=l4iog&p_id=Twitter" />
    <img height="1" width="1" style="display:none;" alt="" src="//t.co/i/adsct?txn_id=l4iog&p_id=Twitter" />
  </noscript>
  </body>
</html>
{else}
  {$raw_data}
{/if}
