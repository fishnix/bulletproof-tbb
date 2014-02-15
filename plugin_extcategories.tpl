<select id="categories_id_{count($categories)}">
  <option value="">{$desc}</option>
  {foreach from=$categories item="plugin_category"}
    <option value="{$plugin_category.categoryURL}">{$plugin_category.category_name|escape}</option>
  {/foreach}
</select>

<script>
  document.getElementById("categories_id_{count($categories)}").onchange = function() {
      if (this.selectedIndex!==0) {
          window.location.href = this.value;
      }        
  };
</script>