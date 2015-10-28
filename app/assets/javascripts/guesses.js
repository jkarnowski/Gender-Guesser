// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
	console.log("ready inside guesses")

	// buttonListener();
})

var buttonListener = function(){
	console.log("inside the buttonListener")

	$('.clicked').on('click', function(event){
		console.log(this)
		event.preventDefault();
		// console.log("preventing....default")

		var url =  '/guesses'
		var method =  'POST'
		var dataType =  "jsonp"

		$.ajax({
			url: url,
			beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
			method: method,
			dataType: dataType
		})
		.success(function(sResponse){
			console.log(sResponse)
		})
		.error(function(sResponse){
			console.log(sResponse)
			console.log("FAILING")
		});
	})
}