class EvaluateOptionController < ApplicationController
  unloadable



  def index
    @project = Project.find(params[:project_id])
    # @polls = Poll.find(:all) # @project.polls
    
    @evaluate_options = EvaluateOptions.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluate_options }
    end
  end


  def new
    @evaluate_options = EvaluateOptions.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluate_options }
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end

end
