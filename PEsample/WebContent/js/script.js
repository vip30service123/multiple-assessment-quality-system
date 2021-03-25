$(document).ready(function() {
	$("#submit_questionnaire_bu").on("click",
		function(event) {
			getExample()
			getProgramsCount()
		})
})


function getExample() {
	$.ajax({
		type: 'GET',
		url: "rest/example",
		success: function(data, textStatus, jqXHR) {
			alert(data)
		}
	});
}

function getProgramsCount() {
	$.ajax({
		type: 'GET',
		contentType: "application/json",
		url: "rest/programs/count",
		success: function(data, textStatus, jqXHR) {
			alert(data)
		}
	})
}