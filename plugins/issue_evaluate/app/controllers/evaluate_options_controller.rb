class EvaluateOptionsController < ApplicationController
  unloadable

  def index
    @project_id = params[:project_id]
    @project = Project.find(@project_id)

    @evaluate_options = EvaluateOptions.all

    respond_to do |format|
      format.html 
      format.json { render json: @evaluate_options }
    end
  end


  def new
    @project_id = params[:project_id]
    @project = Project.find(@project_id)
    @evaluate_option = EvaluateOptions.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluate_option }
    end
  end

  def edit
    @project_id = params[:project_id]
    @project = Project.find(@project_id)
    
    @evaluate_option = EvaluateOptions.find(params[:id])
  end

  def create
    @project_id = params[:project_ids]
    
      @evaluate_option = EvaluateOptions.new(params[:evaluate_options])
  
      respond_to do |format|
        if @evaluate_option.save
          format.html { redirect_to :action => 'index', :project_id => @project_id}
          format.json { render json: @evaluate_option, status: :created, location: @post }
        else
          format.html { render action: "new" }
          format.json { render json: @evaluate_option.errors, status: :unprocessable_entity }
        end
      end
  end

  def update
      @project_id = params[:project_ids]
      @evaluate_option = EvaluateOptions.find(params[:id])

      respond_to do |format|
        if @evaluate_option.update_attributes(params[:evaluate_options])
          format.html { redirect_to :action => 'index', :project_id => @project_id }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @evaluate_option.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    
    @project_id = params[:project_id]
    @evaluate_option = EvaluateOptions.find(params[:id])
    @evaluate_option.destroy

    respond_to do |format|
      format.html { redirect_to :action => 'index' , :project_id => @project_id}
      format.json { head :no_content }
    end
  end

end
