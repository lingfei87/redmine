$(document).ready(function() {
	$('#star').raty({
		path: "/plugin_assets/issue_evaluate/images",
		target: '#issue_evaluates_score',
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
  			score: $('#IssueEvaluateScore'+i).val()
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

function AddScore(){
	var score = $('#issue_evaluates_score').val();
	var user = $('#currentUser').val();
	$('#NewEvaluateNotice').addClass('EvaluateNotice');
	
	var a = document.createElement('a');
	var linkText = document.createTextNode(user.split(",")[1]);
	a.appendChild(linkText);
	a.href = "/users/" + user.split(",")[0] ;
	
	$('#NewEvaluateNotice').append("Updated by "); 
	$('#NewEvaluateNotice').append(a);
	
	var a2 = document.createElement('a');
	var linkText2 = document.createTextNode(" less than a minute");
	a2.appendChild(linkText2);
	a2.href = "/projects/" ;
	
	$('#NewEvaluateNotice').append(a2);
	$('#NewEvaluateNotice').append(" ago"); 
	
	NewIssueEvaluate(score);

	$('#new-evaluation-form').hide();
}

function AddEvaluateOptions(){

	$("input[name='EvaluateOptions[]']:checked").each(function(){ 

		var input = document.createElement("input");
		$(input).attr("type", "checkbox");
		$(input).attr("name", "SelectedEvaluateOptions[]");
		$(input).attr("value", "");
		$(input).attr("checked", "true");
		$(input).attr("disabled","true");
		
    	$('#NewIssueEvaluateOptions').append(input);
        var text = document.createTextNode($(this).parent().text());
        $('#NewIssueEvaluateOptions').append(text); 
    }); 

	$('#new-evaluation-form').hide();
}

function AddEditIssueEvaluateLink(){
	
	var image = document.createElement('img');
	image.src = "/images/edit.png";
	image.onclick = aaa();
	image.style.cursor = "pointer";

    $('#EditIssueEvaluate').append(image);
}

var Issues = Issues || {};

Issues.IssueChecklist = jQuery.klass({
	init: function(button) {
		this.button  = $('#'+button);
	},

	readChecklist: function(event) {
		event.preventDefault();
	},
	
	addChecklist: function() {
		this.button.click($.proxy(function(){
			if($("input[name='EvaluateOptions[]']:checked").length > 0)
			{
				AddScore();
				AddEvaluateOptions();
				$('#contextual').hide();
			}
			else
			{
				alert("请至少选择一个评价选项！");
			}
		}, this));
	},
});	

function observeIssueChecklistField(add_button) {
	issueChecklist = new Issues.IssueChecklist(add_button);
}

function createIssueChecklist() {
	issueChecklist.addChecklist(); 
}
