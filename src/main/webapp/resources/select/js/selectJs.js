/**
 * 
 */
const dropdown = document.getElementsByClassName('dropdown-el'),
      dropdown2 = document.getElementsByClassName('dropdown-eltwo');
   



$(dropdown).click(function(e) {
  e.preventDefault();
  e.stopPropagation();
  $(this).toggleClass('expanded');
  $('#'+$(e.target).attr('for')).prop('checked',true);
});
$(document).click(function() {
  $(dropdown).removeClass('expanded');
});

$(dropdown2).click(function(e) {
	  e.preventDefault();
	  e.stopPropagation();
	  $(this).toggleClass('expandedtwo');
	  $('#'+$(e.target).attr('for')).prop('checked',true);
	});
	$(document).click(function() {
	  $(dropdown2).removeClass('expandedtwo');
	});