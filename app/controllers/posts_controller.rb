class PostsController < ApplicationController
  def index
    @posts = Post.where(author_id: params[:user_id])
    @user = User.find(params[:user_id])
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])
    @comments = Post.five_most_recent_comments(params[:user_id], params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new( title: post_params[:title], text: post_params[:text], comments_counter: 0, likes_counter: 0, author_id: params[:user_id])
      respond_to do |format|
        format.html do
          if @post.save
            flash[:success] = "Question saved successfully"
            redirect_to user_posts_path
          else
            flash.now[:error] = "Error: Question could not be saved"
            render :new, locals: { post: @post }
          end
        end
      end
  end
     
  private
    def post_params
      params.require(:post).permit(:title, :text)
    end
end
