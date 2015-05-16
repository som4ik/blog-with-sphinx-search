class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy,:confirm,:ignore]
  before_action :authenticate_user!,except: [:index,:show]
  include Com::Commentable
  # GET /posts
  # GET /posts.json
  def index
    if params[:format]
      @posts = Category.find(params[:format]).posts.where(:confirm =>true).order('created_at DESC').paginate(:page => params[:page], :per_page => 6)
    else
      @posts = Post.order('created_at DESC').where(:confirm =>true).paginate(:page => params[:page], :per_page => 6)
    end
    @categories = Category.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end
  def confirm
    @users = User.where(:info_stop => true)
    @post[:confirm] = true
    @post[:ignore] = false
    @user = @post.user
    @post.save
    @users.each do |u|
      if (u.category_ids&@post.category_ids)!=[]
        MailsWorker.perform_async(@post.id,u.id)
        # UserMailer.new_post_email(@post,u).deliver
      end
    end
  redirect_to admin_posts_path
  end
  def ignore
    @post[:ignore] = true
    @post[:confirm] = false
    @post.save
    redirect_to admin_posts_path
  end
  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @user = current_user
    @post = @user.posts.create(post_params)

    respond_to do |format|
      if @post.save
        
        format.html { redirect_to posts_path, notice: 'Post was successfully created ,Waiting for Admin confirmation' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post[:confirm]= false
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.Waiting Admin confirm' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :body,:confirm,:ignore,:user_id,{category_ids:[]})
    end
end
