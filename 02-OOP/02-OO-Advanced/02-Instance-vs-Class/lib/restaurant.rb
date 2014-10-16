class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :city, :name, :average_rate, :rate
  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rate= 0
    @rate = 0
    @c = 0
  end
  # TODO: implement #filter_by_city and #rate methods
 def rate(number)
  @rate += number
  @c += 1
 end

  def average_rating
    @average_rate = (@rate / @c)
  end

def self.filter_by_city(restaurants, city)
  @restos = []
  restaurants.each do |resto|
    if resto.city == city
     @restos << resto
   end
   end
   return @restos
end

end

macdo = Restaurant.new("paris", "macdo")
azerty = Restaurant.new("NY", "azerty")
macdo.rate(10)
macdo.rate(20)
macdo.rate(20)
p macdo.average_rating
restaurants = [macdo, azerty]
p Restaurant.filter_by_city(restaurants,"NY")
# p @restos