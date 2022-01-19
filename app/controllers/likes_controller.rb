class LikesController < ApplicationController
    def new 
        @like = Like.new(post_id: params[:post_id], author_id: params[:user_id])
    end

    def create
      @like = Like.new(post_id: params[:post_id], author_id: params[:user_id])
            if @like.save && @like.update_likes_counter_for_post(params[:post_id])
              flash[:success] = "Post liked successfully"
              redirect_back(fallback_location: root_path) 
            else
              flash.now[:error] = "Error: Post could not be liked"
            end
    end
       
    private
      def post_params
        params.require(:comment).permit(:title, :text)
      end
  end
  