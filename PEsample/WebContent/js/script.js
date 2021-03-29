$(document).ready(function() {
	$("#submit_questionnaire_bu").on("click",
		function(event) {
			getExample()
			getProgramsCount()
		})
	$("#button1").on("click",
		function(event) {
			getTable()
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
function getTable(){
    $.ajax({
    type : 'GET',
    url : "rest/programs/table",
    success : function(obj, textStatus, jqXHR) {
		obj = JSON.parse(obj);
        $("#mytable1").html("");
        for (var i = 0; i < obj.length; i++) {
            var tr = "<tr>";
            var td0 = "<td>" + (i + 1) + "</td>";
            var td1 = "<td>" + obj[i].academic_year + "</td>";
            var td2 = "<td>" + obj[i].Faculty + "</td>";
            var td3 = "<td>" + obj[i].Lecturer + "</td>";
            var td4 = "<td>" + obj[i].Module + "</td>";
			var td5 = "<td>" + obj[i].Semester + "</td>";
            var td6 = "<td>" + obj[i].Class + "</td>";
			var td7 = "<td>" + obj[i].Programm + "</td></tr>";
            $("#mytable1").append(tr + td0 + td1 + td2 + td3 + td4 + td5 +td6+td7);
	        	}
	    	}
		}
	);
}