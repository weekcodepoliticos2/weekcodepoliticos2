class PoliticiansController < ApplicationController

  def index
  end

  def ranking
    @scores = Score.all.order(rating: :desc)
  end

  def comparison
    @player_one = Politician.find(rand(1..Politician.count))
    @player_two = Politician.where.not(id: @player_one.id).sample
  end

  def update_ranking
    winner = set_player(params[:winner])
    loser = set_player(params[:loser])
    GameService.new.run_game(winner, loser)
    redirect_to comparison_path
  end

  private

  def set_player(id)
    Politician.find(id)
  end

end
