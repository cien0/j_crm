/* global $ */
$(document).on('page:change', function(){
  return $('.chosen-select').chosen({
    allow_single_deselect: true,
    no_results_text: 'Nie znaleziono wartości',
    width: '100%'
  });
});