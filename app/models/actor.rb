class Actor < ActiveRecord::Base
  def roles
    Role.where(:actor_id => self.id)
  end

  def movies
    movies = []
    self.roles.each do |role|
      movies << role.movie
    end
    return movies
  end

  def movies_refactored
    self.roles.map { |role| role.movie }
  end

  def movies_refactored_explained
    # temp_array = []
    self.roles.map do |role|
      role.movie
      # temp_arry < role.movie
      # return temp_array
    end
  end
end
