class CommentsController < ApplicationController
  def index
    user = User.find(1)
    @nickname = user.nickname
    @comments = user.comments.page(params[:page]).per(5).order("created_at DESC")
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
