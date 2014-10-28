class Restaurant
  attr_reader :name, :location, :tel, :number_employe, :seat

  def initialize(name, location, tel, number_employe, seat)
    @name = name
    @location = location
    @tel = tel
    @number_employe = number_employe
    @seat = seat
    @meals = {
      pizza: 5
      frite: 2
      coca: 1
      burger: 4
    }
  end
end

# Mac_do = Restaurant.new("Mac do", "Paris", 0100000000, 15, 100)
