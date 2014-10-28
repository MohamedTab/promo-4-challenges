require_relative '..lib/models/restaurant'

class RestaurantController

  def initialize
    @restaurant_view = Restaurant_view.new
    @restaurant = Restaurant.new("Mac do", "Paris", 0100000000, 15, 100)
  end

  def begin
    @restaurant_view.welcome
  end
end