class EvaluateOptionsController < ApplicationController
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
    @evaluate_option = EvaluateOptions.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluate_option }
    end
  end
  
  def show
    @evaluate_option = EvaluateOptions.find(params[:id])
    # @project = Project.find(params[:project_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluate_option }
    end
  end
  
  def edit
    @evaluate_option = EvaluateOptions.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    puts "aaaaaaaaaaaaa"
    puts params[:evaluate_option]
    @evaluate_option = EvaluateOptions.new(params[:evaluate_option])

    respond_to do |format|
      puts "bbbbbbbbbbbbb"
      if @evaluate_option.save
        puts "ccccccccccccccc"
        format.html { redirect_to @evaluate_option, notice: 'Evaluate Option was successfully created.' }
        format.json { render json: @evaluate_option, status: :created, location: @post }
      else
        puts "ddddddddddddd"
        format.html { render action: "new" }
        format.json { render json: @evaluate_option.errors, status: :unprocessable_entity }
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
