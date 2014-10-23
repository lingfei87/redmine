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

var Redmines = Redmines || {};

Redmine.IssueEvaluate = Class.create({
	initialize: function(button) {
		this.button  = $(button);
		// this.button.click($.proxy(this.readChecklist, this));
		Event.observe(this.button, 'click', this.readChecklist.bindAsEventListener(this));
	},

	readChecklist: function(event) {
		Event.stop(event);
		alert("aaaaaaaaaaaaaaaa");
	},
	
	addChecklist: function() {
		alert("4444444");
	},
});	

function observeIssueChecklistField(add_button) {
	alert("111111111");
	alert($(add_button));
	issueChecklist = new Redmines.IssueEvaluate(add_button);
	alert("222");
}

function createIssueChecklist() {
	issueChecklist.addChecklist(); 
}
