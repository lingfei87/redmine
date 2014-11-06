$(document).ready(function() {
	$('#star').raty({
		path: "/plugin_assets/issue_evaluate/images",
		// targetScore: '#issue_evaluates_score',
		target:     '#issue_evaluates_score',
		targetKeep: true,
        targetType: 'number',
	});

});

function ListIssueEvaluates (){
	for(var i=0 ; i< $('#IssueEvaluateSize').val(); i++)
	{
		$('#IssueEvaluate'+i).raty({
			path: "/plugin_assets/issue_evaluate/images",
			readOnly:  true,
  			score:     $('#IssueEvaluateScore'+i).val()
		});
	}
}
	
window.onload = ListIssueEvaluates;

function NewIssueEvaluate(score) {
	$('#NewIssueEvaluate').raty({
		path: "/plugin_assets/issue_evaluate/images",
		readOnly:  true,
		score:     score,
	});
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
			var score = $('#issue_evaluates_score').val();
			NewIssueEvaluate(score);
			$('#new-evaluation-form').hide();
		}, this));
	},
});	

function observeIssueChecklistField(add_button) {
	issueChecklist = new Issues.IssueChecklist(add_button);
}

function createIssueChecklist() {
	issueChecklist.addChecklist(); 
}
