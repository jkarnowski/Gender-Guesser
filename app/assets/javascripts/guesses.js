// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
	console.log("ready inside guesses")

	buttonListener();
})

var buttonListener = function(){
	console.log("inside the buttonListener")

	$('.confirm-guess').on('click', function(){
		alert('thanks for playing!');
	})
	
}