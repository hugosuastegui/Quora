$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 
  $("#upvote").click(function(event){
    event.preventDefault();
    var data = $("#upvote").attr('href');
    console.log(data);
    $.get(data, function(data){
      
    });
  });
});
