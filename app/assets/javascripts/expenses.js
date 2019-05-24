$('table').on('click','tr a.remove',function(e){
  e.preventDefault();
  $(this).closest('tr').remove();
});
