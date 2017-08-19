class RankingController < ApplicationController
  def ranking
    @ranking = Correct.limit(5)
  end
end
