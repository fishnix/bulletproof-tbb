{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
{foreach from=$plugindata item=item}
<div class="serendipitySideBarItem container_{$item.class}">
  <div class="row">
    <div class="col">
    {if $item.title != ""}
    <h3 class="serendipitySideBarTitle {$item.class}">{$item.title}</h3>
    {else}
    <div class="serendipitySideBarTitleEmpty"></div>
    {/if}
    <div class="serendipitySideBarContent">{$item.content}</div>
    <div class="serendipitySideBarFooter"></div>
    </div>
  </div>
</div>
{/foreach}
{if $is_raw_mode}
</div>
{/if}
