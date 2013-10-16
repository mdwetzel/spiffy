$(function() {	
	$('#generate').click(function() {
		$.get("/response", function(data, status) { 
			var item = $("<li>" + data['word'] + "</li>").hide();
			$("#word-box").prepend(item);
			item.fadeIn(1000);
		});
	});
});