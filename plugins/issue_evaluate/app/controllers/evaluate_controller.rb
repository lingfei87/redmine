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
      format.js
      # format.html { redirect_to issue_path(@issue) }
      # format.html { render partial: '_index' }
      puts "aa"
       
    end
    # render :partial => '_form', :content_type => 'text/html'
    
    
  end

  def delete
  end
end
