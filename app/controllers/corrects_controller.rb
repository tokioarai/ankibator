class CorrectsController < ApplicationController
  def index
          user_ids = Comment.group(:user_id).order('count_user_id DESC').limit(5).count(:user_id).keys
      @ranking = user_ids.map { |id| User.find(id) }

  end
end
