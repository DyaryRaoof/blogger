class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(text: post_params[:text], post_id: params[:post_id], author_id: params[:user_id])
    respond_to do |format|
      format.html do
        if @comment.save
          flash[:success] = 'Comment saved successfully'
          redirect_to user_post_path(id: params[:post_id])
        else
          flash.now[:error] = 'Error: Comment could not be saved'
          render :new, locals: { comment: @comment }
        end
      end
    end
  end

  private

  def post_params
    params.require(:comment).permit(:title, :text)
  end
end
