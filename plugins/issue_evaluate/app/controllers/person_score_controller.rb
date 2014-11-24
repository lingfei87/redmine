class PersonScoreController < ApplicationController
  unloadable



  def index
    @project = Project.find(params[:project_id])
  end


  def show
  end

end
