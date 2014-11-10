class EvaluateController < ApplicationController
  # unloadable


  def index
    puts "11111111"
  end
  
  def testajax
    @testdata = "ajaxy data"
    
    respond_to do |format|
      format.js
      # format.html { redirect_to issue_path(@issue) }
      # format.html { render :template => '_form' }
      puts "aa"
       
    end
  end

  def show
    puts "2"
  end

  def create
    puts "3"
    
    @currentUser = User.current
    @evaluate = IssueEvaluates.new
    score = params[:score]
    issue_id = params[:issue_evaluates][:issue_id]

    @evaluate.score = score
    @evaluate.issue_id = issue_id
    @evaluate.user_id = User.current.id
    @evaluate.save
puts "5"
puts @evaluate.issue.created_on

    # respond_to do |format|
      # format.js
      # format.html { redirect_to issue_path(@issue) }
      # format.html { render :template => '_index' }
      # puts "aa"
       
    # end
    # render :partial => 'index', :content_type => 'text/html'
    
    
  end

  def delete
  end

end
