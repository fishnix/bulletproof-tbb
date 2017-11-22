{if $is_raw_mode}
<div id="serendipity{$pluginside}SideBar">
{/if}
<div class="serendipitySideBarItem">
  <div class="row">
    <div class="col">
      <div class="serendipity_social_follow text-center">
        <ul class="list-inline">
          <li class="list-inline-item">
            <a href="http://www.facebook.com/TheBudgetBabe" target="_blank" title="Follow The Budget Babe on Facebook!">
              <i class="fa fa-2x fa-facebook-official"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a href="http://www.twitter.com/budgetbabe" target="_blank" title="Follow The Budget Babe on Twitter!">
              <i class="fa fa-2x fa-twitter-square"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a href="http://www.instagram.com/budgetbabe" target="_blank" title="Follow The Budget Babe on Instagram!">
              <i class="fa fa-2x fa-instagram"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a href="http://www.pinterest.com/TheBudgetBabe" target="_blank" title="Follow The Budget Babe on Pinterest!">
              <i class="fa fa-2x fa-pinterest-square"></i>
            </a>
          </li>
          <li class="list-inline-item">
            <a href="https://www.bloglovin.com/blogs/budget-babe-226954" target="_blank" title="Follow The Budget Babe on Bloglovin!">
              <i class="fa fa-2x fa-plus-square"></i>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
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
