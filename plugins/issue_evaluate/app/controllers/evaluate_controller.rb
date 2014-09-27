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
    
    
  end

  def delete
  end
end
