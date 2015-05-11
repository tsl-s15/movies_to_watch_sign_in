class Movie < ActiveRecord::Base
  def director
    Director.find(self.director_id)
  end
end
