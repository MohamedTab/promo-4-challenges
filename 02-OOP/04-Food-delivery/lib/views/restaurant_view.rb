class Restaurant_view

  attr_reader :welcome
  def initialize(restaurant)
    @restaurant = restaurant
  end

  def welcome
    Puts "#{restaurant.name}"
  end

end