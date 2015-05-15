class ToWatch < ActiveRecord::Base
  def movie
    Movie.find(self.movie_id)
  end
end
