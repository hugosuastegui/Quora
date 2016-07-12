$(document).ready(function() {
	// Este código corre después de que `document` fue cargado(loaded) 
	// completamente. 
	// Esto garantiza que si amarramos(bind) una función a un elemento 
	// de HTML este exista ya en la página. 
  $(".upvote").click(function(event){
    event.preventDefault();
    // console.log(this);
    var url = $(this).attr('href');
    console.log(url);
    console.log(typeof(url));
    $.get(url, function(data){
      console.log("CALLBACK");
      console.log(data);
      $("#change_votes").html(data);
    });
  });
});
