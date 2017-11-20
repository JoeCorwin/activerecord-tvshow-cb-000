class Show < ActiveRecord::Base

  def self.highest_rating
    rating = Show.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.order('rating desc limit 1')
    show[0]
  end

  def self.lowest_rating
    rating = Show.minimum(:rating)
  end

  def self.least_popular_show
    show = Show.order('rating asc limit 1')
    show[0]
  end

  def self.ratings_sum
    sum_ratings = Show.sum(:rating)
  end

  def self.popular_shows
    shows = Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    shows = Show.order('name')
  end

end
