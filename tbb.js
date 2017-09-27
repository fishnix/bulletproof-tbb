/* JS functions for TBB theme */
var $j = jQuery.noConflict();

$j(document).ready(function(){
  $j('.search-button').on("click",(function(e){
    $j("#search-button").toggleClass("sb-closed");        
    $j("#search-input").toggleClass("sb-closed");
    e.stopPropagation();
  }));
    
  $j(".form-control-submit").click(function(e){
    $j(".form-control").each(function(){
      if($j(".form-control").val().length == 0){
        e.preventDefault();
        $j(this).css('border', '2px solid red');
      }
    })
  })
})