<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="s9y-categories-collapse-1">
  <ul class="nav navbar-nav" id="serendipity_categories_list" style="list-style: none; margin: 0px; padding: 0px">
    {foreach from=$categories item="plugin_category"}
      <li><a href="{$plugin_category.categoryURL}" title="{$plugin_category.category_name|escape}">{$plugin_category.category_name|escape}</a></li>
    {/foreach}
  </ul>
</div><!-- /.navbar-collapse -->