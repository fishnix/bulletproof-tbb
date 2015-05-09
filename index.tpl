{if $is_embedded != true}
  <!DOCTYPE html>
    <!--[if IE 7]><html class="ie ie7 ltie8 ltie9" lang="en-US" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#"><![endif]-->
    <!--[if IE 8]><html class="ie ie8 ltie9" lang="en-US" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#"><![endif]-->
    <!--[if !(IE 7) | !(IE 8)  ]><!-->
    <html lang="en-US" prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb#">
    <!--<![endif]-->
    <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>{$head_title|@default:$blogTitle}{if $head_subtitle} - {$head_subtitle}{/if}</title>
      {serendipity_hookPlugin hook="frontend_header"}
      <meta name="title" content="{$head_title|@default:$blogTitle}{if $head_subtitle} - {$head_subtitle}{/if}" />
      {if $is_single_entry and not $is_preview}
        {if !empty($template_option.addthisfbimage) }<link rel="image_src" href="{$template_option.addthisfbimage}" />
        {/if}
      {/if}
      <meta http-equiv="Content-Type" content="text/html; charset={$head_charset}" />
      <meta name="Powered-By" content="Serendipity v.{$head_version}" />
      <link rel="alternate"  type="application/rss+xml" title="{$blogTitle} RSS feed" href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/index.rss2" />
      <link rel="alternate"  type="application/x.atom+xml"  title="{$blogTitle} Atom feed"  href="{$serendipityBaseURL}{$serendipityRewritePrefix}feeds/atom.xml" />
      {if $entry_id}<link rel="pingback" href="{$serendipityBaseURL}comment.php?type=pingback&amp;entry_id={$entry_id}" />{/if}
      <link rel="shortcut icon" href="{$serendipityBaseURL}favicon.ico" />

      <!-- Bootstrap -->
      <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/bootstrap-3.3.4-dist/css/bootstrap.min.css">
      <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/bootstrap-3.3.4-dist/css/bootstrap-theme.min.css">
      <!-- FontAwesome -->
      <link rel="stylesheet" href="{$serendipityHTTPPath}templates/{$template}/font-awesome-4.3.0/css/font-awesome.min.css">
      <!-- style.css -->
      <link rel="stylesheet" type="text/css" href="{$head_link_stylesheet}" />

      <!-- tbb  -->
      <link rel="stylesheet" type="text/css" href="{$serendipityHTTPPath}templates/{$template}/tbb_style.css" />

      <!-- Chosen -->
      <link rel="stylesheet" type="text/css" href="{$serendipityHTTPPath}templates/{$template}/chosen-1.4.2/chosen.min.css" />
      <script type="text/javascript" src="{$serendipityHTTPPath}templates/{$template}/chosen-1.4.2/chosen.jquery.min.js" async></script>


      <!--[if lt IE 9]>
      <script src="{$serendipityHTTPPath}templates/{$template}/js/html5shiv.min.js" type="text/javascript"></script>
      <script src="{$serendipityHTTPPath}templates/{$template}/js/respond.min.js" type="text/javascript"></script>
      <![endif]-->

      <script src="{$serendipityHTTPPath}templates/{$template}/bootstrap-3.3.4-dist/js/bootstrap.min.js" async></script>
      <script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=cse-search-box&amp;lang=en" async></script>

      <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=budgetbabe" async="async"></script>

      {if $template_option.additional_head_code_toggle == 'true'}
        {$template_option.additional_head_code}
      {/if}
    </head>

    <body>
      <h1 class="hidden">{$blogTitle}</h1>
  {else}
    {serendipity_hookPlugin hook="frontend_header"}
  {/if}

  {if $is_raw_mode != true}
    <div class="container">
      <!-- #skiplinks -->
      <div class="sr-only sr-only-focusable">
        <ul>
          {if $template_option.sitenavpos != 'none'}<li lang="en"><a href="{if $template_option.sitenavpos == 'left'}#sbsitenav{elseif $template_option.sitenavpos == 'right'}#sbsitenav{else}#sitenav{/if}">Skip to site navigation</a></li>{/if}
          <li lang="en"><a href="#content">Skip to blog entries</a></li>
          <li lang="en"><a href="{$serendipityBaseURL}index.php?/archive">Skip to archive page</a></li>
          <li lang="en"><a href="#serendipityLeftSideBar">Skip to left sidebar</a></li>
          <li lang="en"><a href="#serendipityRightSideBar">Skip to right sidebar</a></li>
        </ul>
      </div>

      {if $template_option.leaderboard_code_toggle == 'true'}
        <div class="leaderboard_code text-center">{$template_option.leaderboard_code}</div>
      {/if}

      <nav class="navbar">
        <h1 class="hidden">Main Navigation</h1>
        <div class="navbar-header navbar-left">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#s9y-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <i class="fa fa-lg fa-bars"></i>
          </button>
          <div class="hidden-sm hidden-md hidden-lg">
            <a href="{$serendipityBaseURL}">
              <img alt="{$blogTitle}" class="img-responsive" src="{$template_option.headerimage}">
            </a>
          </div>
        </div>

        <div class="collapse navbar-collapse" id="s9y-navbar-collapse-1">
          <ul class="nav navbar-nav">
            {foreach from=$navlinks item="navlink" name="navbar"}
              <li class="{if $currpage==$navlink.href}currentpage{/if}{if $smarty.foreach.navbar.first} navlink_first{/if}{if $smarty.foreach.navbar.last} navlink_last{/if}"><a href="{$navlink.href}" title="{$navlink.title}">{$navlink.title}</a></li>
            {/foreach}
            <form action="http://www.google.com/cse" id="cse-search-box" class="navbar-form navbar-right form" role="search">
              <div class="form-group">
                <input type="hidden" name="cx" value="{$template_option.googlesearch_partner_id}" />
                <input type="hidden" name="ie" value="UTF-8" />
                <input type="text" class="form-control" name="q"/>
                <input type="hidden" class="btn btn-default" name="sa" value="Search" />
              </div>
            </form>
          </ul>
        </div>
      </nav>

    </div>
    <div class="container brand-img hidden-xs">
      <a class="homelinkimage" href="{$serendipityBaseURL}">
        <img alt="{$blogTitle}" class="center-block img-responsive" src="{$template_option.headerimage}">
      </a>
    </div>

    <div class="container">
      <div class="row">
        <aside id="serendipityLeftSideBar" class="hidden-xs col-sm-2">
          <div class="serendipity_social_follow">
            <ul class="list-inline">
              <li>
                <a href="http://www.facebook.com/TheBudgetBabe" target="_blank" title="Follow The Budget Babe on Facebook!">
                  <i class="fa fa-2x fa-facebook-official"></i>
                </a>
              </li>
              <li>
                <a href="http://www.twitter.com/budgetbabe" target="_blank" title="Follow The Budget Babe on Twitter!">
                  <i class="fa fa-2x fa-twitter-square"></i>
                </a>
              </li>
              <li>
                <a href="http://www.instagram.com/budgetbabe" target="_blank" title="Follow The Budget Babe on Instagram!">
                  <i class="fa fa-2x fa-instagram"></i>
                </a>
              </li>
              <li>
                <a href="http://www.pinterest.com/TheBudgetBabe" target="_blank" title="Follow The Budget Babe on Pinterest!">
                  <i class="fa fa-2x fa-pinterest-square"></i>
                </a>
              </li>
              <li>
                <a href="http://www.bloglovin.com/en/blog/226954/the-budget-babe/follow" target="_blank" title="Follow The Budget Babe on Bloglovin!">
                  <i class="fa fa-2x fa-plus-square"></i>
                </a>
              </li>
            </ul>
          </div>
          {if $leftSidebarElements > 0}{serendipity_printSidebar side="left"}{/if}
        </aside>
        <section class="col-sm-10 col-md-7 content" id="content">
          {$CONTENT}
        </section>
        <aside id="serendipityRightSideBar" class="hidden-xs hidden-sm col-md-3">
          {if $rightSidebarElements > 0}{serendipity_printSidebar side="right"}{/if}
        </aside>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <footer class="col-md-6 col-md-offset-2">
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
        </footer>
      </div>
    </div>
  {serendipity_hookPlugin hook="frontend_footer"}
  {if $template_option.addthiswidget_loc == 'none' }
    /* Disable addthis */
  {else}
    {literal}
      <script type="text/javascript" async>
        var addthis_config = {
          data_track_addressbar: false
        };
        var addthis_share = {
          url_transforms : {
            shorten: {
              twitter: 'bitly'
            }
          }
        }
      </script>
    {/literal}
  {/if}
  <script src="//platform.twitter.com/oct.js" type="text/javascript"></script>
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
