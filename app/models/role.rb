class Role < ActiveRecord::Base
  def movie
    Movie.find(self.movie_id)
  end

  def actor
    Actor.find(self.actor_id)
  end
end
