class EvaluateController < ApplicationController

  def index
  end

  def show
  end

  def update
  end

  def create
    @currentUser = User.current
    @evaluate = IssueEvaluates.new
    score = params[:score]
    issue_id = params[:issue_evaluates][:issue_id]
  
    @evaluate.score = score
    @evaluate.issue_id = issue_id
    @evaluate.user_id = User.current.id
    
    if @evaluate.save
      for option in params[:EvaluateOptions]
        @new_option = IssueOptionRelation.new
        @new_option.issue_evaluate_id = @evaluate.id
        @new_option.evaluate_option_id = option
        @new_option.save
      end
      
    end
  end

  def edit
  end

  def delete
  end

end
