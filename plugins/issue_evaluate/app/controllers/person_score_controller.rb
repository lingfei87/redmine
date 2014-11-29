class PersonScoreController < ApplicationController
  unloadable

  def index
    @project_id = params[:project_id]
    @project = Project.find(@project_id )
    # issue_id = IssueEvaluates.find(:all).collect{|evaluate| evaluate.issue_id}.uniq
#     
    # @Evaluated_user_id = []
    # @users = []
#     
    # for id in issue_id
      # @Evaluated_user_id.push(Issue.find(id).assigned_to_id)  
    # end
    # @Evaluated_user_id = @Evaluated_user_id.uniq
# 
    # if @Evaluated_user_id != []
      # for user_id in @Evaluated_user_id
        # @user = User.find(user_id)
        # @users.push(@user)
      # end
    # end
    
    @issue_options_id = IssueOptionRelation.find(:all).collect{|options| options.evaluate_option_id}.uniq
    
    @users_id = IssueOptionRelation.find(:all).collect{|options| options.user_id}.uniq
    
  end

  def show
    user_id = params[:id]
    @project_id = params[:project_id]
    @project = Project.find(@project_id )
    @user = User.find(user_id)
    
    issue_id = IssueEvaluates.find(:all).collect{|evaluate| evaluate.issue_id}.uniq
    @issues = Issue.where(assigned_to_id:@user.id,id:issue_id)
  end

end
