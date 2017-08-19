class CommentsController < ApplicationController
  def index
    @comments = Comment.page(params[:page]).per(10).order("created_at DESC")
  end
  def create
        Comment.create(text: params[:text],company_id:params[:anki][:id], user_id: current_user.id)
        @anki = Company.find(params[:anki][:id])
        @comments = @anki.comments.includes(:user)
  end
      def destroy
      comment = Comment.find(params[:id])
      if comment.user_id == current_user.id
        comment.destroy
      end
    end

end
