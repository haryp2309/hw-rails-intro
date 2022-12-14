class Movie < ActiveRecord::Base

  def self.all_ratings 
    Movie
        .select(:rating)
        .distinct
        .to_a
        .map { |x| x.rating }
  end

  def self.with_ratings(ratings_list)
    if ratings_list then
      Movie.where(rating: ratings_list)
    else
      Movie.all
    end
  end

end