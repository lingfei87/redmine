class EvaluateController < ApplicationController
  # unloadable


  def index
    puts "11111111"
  end

  def show
    puts "2"
  end

  def create
    puts "3"
    @evaluate = IssueEvaluates.new
    score = params[:score]
    # @a = params[:issue_evaluates]
    @evaluate.score = score
    @evaluate.save
    
    respond_to do |format|
      format.html { redirect_to issue_path(@issue) }
      puts "aa"
      format.js {
        puts "bb"
        @relations = @issue.reload.relations.select {|r| r.other_issue(@issue) && r.other_issue(@issue).visible? }
      }
    end
    
    
  end

  def delete
  end
end
