class GameService
    require 'elo'
    
    def run_game(winner, loser)
        player_winner = Elo::Player.new(rating: winner.score.rating, games_played: winner.score.games_played)
        player_loser = Elo::Player.new(rating: loser.score.rating, games_played: loser.score.games_played)   
        player_winner.wins_from(player_loser)
        winner.update_rating(player_winner)
        loser.update_rating(player_loser)
    end
end