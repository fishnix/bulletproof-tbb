{serendipity_hookPlugin hook="entries_header"}
<header><h2 class="display-2">{$CONST.ARCHIVES}</h2></header>
{foreach from=$archives item="archive"}
    <div class="serendipity_entry archives_all_entry">
        <h3 class="display-3">{$archive.year}</h3>
        {foreach from=$archive.months item="month"}
            <div class="row">
                <div class="col"><h4>{$month.date|@formatTime:"%B"}</h4></div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="progress">
                        <div class="progress-bar bg-secondary" role="progressbar" style="width: {math width=100 equation="count * width / max" count=$month.entry_count max=$max_entries format="%d"}%" aria-valuenow="{math width=100 equation="count * width / max" count=$month.entry_count max=$max_entries format="%d"}" aria-valuemin="0" aria-valuemax="100">{$month.entry_count} {$CONST.ENTRIES}</div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-4">
                    {if $month.entry_count}<a href="{$month.link}">{/if}{$CONST.VIEW_FULL}{if $month.entry_count}</a>{/if}
                </div>
                <div class="col-4">
                    {if $month.entry_count}<a href="{$month.link_summary}">{/if}{$CONST.VIEW_TOPICS}{if $month.entry_count}</a>{/if}
                </div>
            </div>
        {/foreach}
    </div>
{/foreach}
<div class="serendipity_pageFooter" style="text-align: center">
    {serendipity_hookPlugin hook="entries_footer"}
</div>
