<!-- ENTRIES START -->
{serendipity_hookPlugin hook="entries_header" addData="$entry_id"}

{foreach name=dg from=$entries item="dategroup"}

<div class="hentry{if $dategroup.is_sticky} serendipity_Sticky_Entry{/if}">
	{if $dategroup.is_sticky}
		{if $template_option.show_sticky_entry_heading == 'true'}
	    <h3 class="serendipity_date">{$CONST.STICKY_POSTINGS}</h3>
		{/if}
	{/if}

	{foreach name=dg_entries from=$dategroup.entries item="entry"}
    <!-- ENTRY ROW START -->
    <div class="row">
      <div class="col">
      {assign var="entry" value=$entry scope="parent"}
      <article>
        <header>
          <h1 class="display-1 text-center entry-title"><a href="{$entry.link}" rel="bookmark">{$entry.title}</a></h1>
          <div class="text-center serendipity_entry serendipity_entry_author_{$entry.author|@makeFilename} {if $entry.is_entry_owner}serendipity_entry_author_self{/if}">
            {if (not $dategroup.is_sticky or ($dategroup.is_sticky and $template_option.show_sticky_entry_footer == 'true'))}
              <div class='serendipity_entryFooter byline'>
                {if $template_option.footerauthor == 'true'}
                  {$CONST.POSTED_BY} <address class="author vcard"><a class="fn" href="{$entry.link_author}">{$entry.author}</a></address>
                {/if}
                <time datetime="{$entry.timestamp|@formatTime:'%Y-%m-%dT%H:%M:%s+%P'}">
                 {$entry.timestamp|@formatTime:'%B %e, %Y'}
                </time>
              </div>
            {/if}
          </div>
        </header>

        <div class="entry-content">
          <div class="serendipity_entry_body">
            {$entry.body}

          {if $entry.is_extended}
            <div class="serendipity_entry_extended"><a id="extended"></a>{$entry.extended}</div>
          {/if}
          </div>
        </div>

      {if (not $dategroup.is_sticky or ($dategroup.is_sticky and $template_option.show_sticky_entry_footer == 'true'))}
        <div class="serendipity_entryFooter">
          <div class="row justify-content-center align-items-center">
            {if $entry.has_comments}
              <div class="col-12 col-sm-4 text-center">
                <p class="h6 serendipity_commentlink">
                  {if $template_option.altcommtrack == 'true'}
                  <a href="{$entry.link}#comments">{if $entry.comments == 0}{$CONST.NO_COMMENTS}{else}{$entry.comments} {$entry.label_comments}{/if}</a>
                  {else}
                  <a href="{$entry.link}#comments">{$entry.label_comments} ({$entry.comments})</a>
                  {/if}
                </p>
              </div>
            {/if}

            {if $entry.has_extended and not $is_single_entry and not $entry.is_extended}
              <div class="col-12 col-sm-4 text-center">
                <div class="readmore_link">
                  <a href="{$entry.link}#extended" title='{$CONST.VIEW_EXTENDED_ENTRY|@sprintf:$entry.title|truncate:50:" ..."}' class="btn btn-secondary btn-lg rounded-0" role="button">Read More</a>
                </div>
              </div>
            {/if}

            <div class="col-12 col-sm-4 text-center">
              <!-- AddThis Widget -->
              <div class="addthis_inline_share_toolbox_vxsc"
                  data-url="{$entry.rdf_ident}"
                  data-title="{$entry.title}"
                  addthis:url="{$entry.rdf_ident}"
                  addthis:title="{$entry.title}">
              </div>
            </div>
          </div>

          {if $entry.is_entry_owner and not $is_preview}
          <div class="row justify-content-center">
            <div class="col text-center">
              <div class="editentrylink"><a href="{$entry.link_edit}">{$CONST.EDIT_ENTRY}</a></div>
            </div>
          </div>
          {/if}

          {if $template_option.footercategories == 'true'}
            {if $entry.categories}
            <div class="row justify-content-center align-items-center">
              <div class="col">
                <p class="entry-catagories text-center">
                Posted in: {foreach from=$entry.categories item="entry_category" name="categories"}<a href="{$entry_category.category_link}">{$entry_category.category_name|@escape}</a>{if not $smarty.foreach.categories.last}, {/if}{/foreach}
                </p>
              </div>
            </div>
            {/if}
          {/if}

          {if $is_single_entry and not $is_preview}
          <div class="row justify-content-center align-items-center">
            <div class="col">
              <div class="center-block addthis_recommended_horizontal"></div>
            </div>
          </div>
          {/if}

          {if $smarty_entrypaging}
          <div class="text-center">
            {if $pagination_prev_link}
            <a href="{$pagination_prev_link}" class="btn btn-secondary btn-lg rounded-0" role="button" title="{$pagination_prev_title}">Previous Post</a>
            {/if}

            {if $pagination_next_link}
            <a href="{$pagination_next_link}" class="btn btn-secondary btn-lg rounded-0" role="button" title="{$pagination_next_title}">Next Post</a>
            {/if}
          </div>
          {/if}

          {$entry.add_footer}
      {/if}
      </div>

      <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
               xmlns:trackback="http://madskills.com/public/xml/rss/module/trackback/"
               xmlns:dc="http://purl.org/dc/elements/1.1/">
      <rdf:Description
               rdf:about="{$entry.link_rdf}"
               trackback:ping="{$entry.link_trackback}"
               dc:title="{$entry.title_rdf|@default:$entry.title}"
               dc:identifier="{$entry.rdf_ident}" />
      </rdf:RDF>

      {$entry.plugin_display_dat}

      {if $is_single_entry and not $use_popups and not $is_preview}
        {if $CONST.DATA_UNSUBSCRIBED}
          <div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_UNSUBSCRIBED|@sprintf:$CONST.UNSUBSCRIBE_OK}</div>
        {/if}

        {if $CONST.DATA_TRACKBACK_DELETED}
          <div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_TRACKBACK_DELETED|@sprintf:$CONST.TRACKBACK_DELETED}</div>
        {/if}

        {if $CONST.DATA_TRACKBACK_APPROVED}
          <div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_TRACKBACK_APPROVED|@sprintf:$CONST.TRACKBACK_APPROVED}</div>
        {/if}

        {if $CONST.DATA_COMMENT_DELETED}
          <div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_COMMENT_DELETED|@sprintf:$CONST.COMMENT_DELETED}</div>
        {/if}

        {if $CONST.DATA_COMMENT_APPROVED}
          <div class="serendipity_center serendipity_msg_notice">{$CONST.DATA_COMMENT_APPROVED|@sprintf:$CONST.COMMENT_APPROVED}</div>
        {/if}

      {/if}

      {if $is_single_entry and not $is_preview}
        <div class="serendipity_comments serendipity_section_comments">
          <a id="comments"></a>
          {if $entry.comments}
            <div class="serendipity_commentsTitle">Comments</div>
            <div id="serendipity_commentlist">{serendipity_printComments entry=$entry.id mode=$entry.viewmode}</div>
          {else}
            <div class="serendipity_commentsTitle"></div>
          {/if}

          {if $entry.is_entry_owner}
            {if $entry.allow_comments}
              <div class="serendipity_center">(<a href="{$entry.link_deny_comments}">{$CONST.COMMENTS_DISABLE}</a>)</div>
            {else}
              <div class="serendipity_center">(<a href="{$entry.link_allow_comments}">{$CONST.COMMENTS_ENABLE}</a>)</div>
            {/if}
          {/if}
          <a id="feedback"></a>

          {foreach from=$comments_messagestack item="message"}
            <div class="serendipity_center serendipity_msg_important">{$message}</div>
          {/foreach}

          {if $is_comment_added}
            <div class="text-center h4">{$CONST.COMMENT_ADDED}</div>
          {elseif $is_comment_moderate}
            <div class="text-center h4">{$CONST.COMMENT_ADDED}<br />{$CONST.THIS_COMMENT_NEEDS_REVIEW}</div>
          {elseif not $entry.allow_comments}
            <div class="text-center h4">{$CONST.COMMENTS_CLOSED}</div>
          {else}
            <div class="serendipity_section_commentform">
              <div class="serendipity_commentsTitle">Leave a comment</div>
                {$COMMENTFORM}
              </div>
          {/if}
        </div>
      {/if}

    </article>
    </div>
    </div>
    <!-- ENTRY ROW END -->

    {if not $is_preview}
  		{if $template_option.between_post_code_toggle == 'all'}
        {if not ($smarty.foreach.dg_entries.last)}
          <!-- Between post tags -->
          <div class="row">
            <div class="col text-center center-block between-post-ad">
              {$template_option.between_post_code}
            </div>
          </div>
        {/if}
      {elseif $template_option.between_post_code_toggle == 'first'}
        {if ($smarty.foreach.dg_entries.first and $smarty.foreach.dg.first)}
          <!-- Between post tags -->
          <div class="row">
            <div class="col text-center center-block between-post-ad">
              {$template_option.between_post_code}
            </div>
          </div>
        {/if}
  		{/if}
    {/if}

		{$entry.backend_preview}
	{/foreach}
</div>

{foreachelse}
  {if not $plugin_clean_page}
    <div class="serendipity_overview_noentries">
      {$CONST.NO_ENTRIES_TO_PRINT}
    </div>
  {/if}
{/foreach}

<div class='serendipity_pageFooter' style="text-align: center">
    {if $footer_info}
    <!-- ({$footer_info}) -->
    {/if}
  {serendipity_hookPlugin hook="entries_footer"}
</div>
<!-- ENTRIES END -->
