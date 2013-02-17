// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
jQuery(function(){
  $('#jusho_todofuken_id').change(function(){
  var todofuken_id = $("#jusho_todofuken_id").val();
  $.get("todoufuken_select.js?todofuken_id=" + todofuken_id);
});
});

function moveItems(direction) {
  
  var leftBox = document.getElementById("bestgame_non_lineup_ids");  
  var rightBox = document.getElementById("bestgame_player_ids");   
  var fromBox, toBox;  

  if (direction == "right") {  
    fromBox = leftBox; toBox = rightBox;  
  }   
  else if (direction == "left") {  
    fromBox = rightBox; toBox = leftBox;  
  }  
    
  if ((fromBox != null) && (toBox != null)) {   
    if(fromBox.length < 1) {  
      alert("リストボックスにアイテムがありません!");  
      return false;  
    }  
    if(fromBox.selectedIndex == -1) {  
      alert("移動するアイテムを選択してください!");  
      return false;  
    }  
    while ( fromBox.selectedIndex >= 0 ) {   
      var newOption = new Option();   
      newOption.text = fromBox.options[fromBox.selectedIndex].text;   
      newOption.value = fromBox.options[fromBox.selectedIndex].value;   
      toBox.options[toBox.length] = newOption;  
      fromBox.remove(fromBox.selectedIndex);   
    }   
  }  
  return false;
}

jQuery(function(){
  $('[id*=bestgame]').submit(function(){
    
    var selectedIDs = new Array();
    $('#bestgame_player_ids option:not(:selected)').each(function() {  
      selectedIDs.push(this.value)
    });
    $('#bestgame_player_ids').val(selectedIDs)
  });
});
