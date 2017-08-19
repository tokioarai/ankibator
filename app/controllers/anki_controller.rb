class AnkiController < ApplicationController

  def index
  end

  def show
    @anki = Company.find(params[:id])
    @comments = @anki.comments.includes(:user)

  end

  def check
    @anki = Company.find(params[:anki][:id])
    @comments = @anki.comments.includes(:user)
  end

end
