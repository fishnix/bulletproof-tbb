
<select class="chosen-select" id="categories_id_{count($categories)}" data-placeholder="{$desc}...">
  <option value=""></option>
  {foreach from=$categories item="plugin_category"}
    <option value="{$plugin_category.categoryURL}">{$plugin_category.category_name|escape}</option>
  {/foreach}
</select>

<script>
  jQuery("#categories_id_{count($categories)}").chosen({
    disable_search_threshold: 10,
    no_results_text: "Oops, nothing found!",
    width: "95%"
  });

  document.getElementById("categories_id_{count($categories)}").onchange = function() {
      if (this.selectedIndex!==0) {
          window.location.href = this.value;
      }        
  };
</script>