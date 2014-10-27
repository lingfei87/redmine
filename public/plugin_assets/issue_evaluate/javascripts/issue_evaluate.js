// function AddSuccess()
// {
	// alert("aaa");
// }

$(document).ready(function() {
	$('#star').raty({
		path: "/plugin_assets/issue_evaluate/images",
		targetScore: '#issue_evaluates_score',
	});
});

if (jQuery) {
alert('Jquery is loaded')
} else {
alert ('Jquery is not loaded')
}


var Issues = Issues || {};

Issues.IssueChecklist = jQuery.klass({
	init: function(button) {
		this.button  = $('#'+button);
		// this.button.click($.proxy(this.readChecklist, this));
		// Event.observe(this.button, 'click', this.readChecklist.bindAsEventListener(this));
	},

	readChecklist: function(event) {
		alert(this.button);
		event.preventDefault();
	},
	
	addChecklist: function() {
		this.button.click($.proxy(function(){
			alert("44444444");
			// Event.stop(event);
		}, this));
	},
});	

function observeIssueChecklistField(add_button) {
	alert("555");
	issueChecklist = new Issues.IssueChecklist(add_button);
	alert("666");
}

function createIssueChecklist() {
	issueChecklist.addChecklist(); 
}
