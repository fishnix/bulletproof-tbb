<div class="row">
  <div class="col">
    <h1 class="text-center display-1">
      <a href="{$category_info['category_link']}">{$category_info['category_name']}</a>
    </h1>
    <p class="lead text-center">{$category_info['category_description']}</p>
  </div>
</div>

{foreach name=dg from=$entries item="dategroup"}
  {foreach name=dg_entries from=$dategroup.entries item="entry"}
    {$category_entries[]=$entry}
  {/foreach}
{foreachelse}
  {if not $plugin_clean_page}
    <div class="serendipity_overview_noentries">
      {$CONST.NO_ENTRIES_TO_PRINT}
    </div>
  {/if}
{/foreach}

<div class="row">
  <div class="col">
    <div class="card-deck my-3">
      {foreach name=e from=$category_entries item="catEntry"}
        <div class="card bg-default">
          {if $catEntry.cardImageSrc != null && $catEntry.cardImageSrc != ''}
          <a href="{$catEntry.link}">
            <img class="card-img-top" src="{$catEntry.cardImageSrc}" alt="{$catEntry.cardImageAlt}">
          </a>
          {/if}
          <div class="card-body">
            <h1 class="display-3 text-center card-title">
              <a href="{$catEntry.link}">
                {$catEntry.html_title|truncate:65:'...':false:false}
              </a>
            </h1>
            <p class="small text-center">
            {foreach name=c from=$catEntry.categories item="cat"}
              <a href="{$cat.category_link}">
                #{$cat.category_name|lower}
              </a>
            {/foreach}
            </p>
          </div>
        </div>
        <!-- ROW LIMIT {$serendipity['rowLimit']} -->
        {if $smarty.foreach.e.iteration % 2 == 0}
        </div>
        <div class="card-deck my-3">
        {/if}
      {/foreach}
    </div>
  </div>
</div>