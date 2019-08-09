class Politician < ApplicationRecord
    has_one :score

    def update_rating(score)
        self.score.rating = score.rating
        self.score.games_played = score.games_played
        self.score.save!
    end
end
