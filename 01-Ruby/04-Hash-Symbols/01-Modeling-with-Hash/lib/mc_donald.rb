BURGERH = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 17
}

def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order
  count_order = 0
  count_order += BURGERH[burger]
  count_order += BURGERH[side]
  count_order += BURGERH[beverage]
  return count_order.to_i
end

# puts "choix burger"
# choix_1=gets.chomp
# puts "choix side"
# choix_2=gets.chomp
# puts "choix beverage"
# choix_3=gets.chomp

# p poor_calories_counter(choix_1, choix_2, choix_3)

MENU = {
  "Happy Meal" => BURGERH["Cheese Burger"] + BURGERH["French fries"] + BURGERH["Coca"],
  "Best of Big Mac" => BURGERH["Big Mac"] + BURGERH["French fries"] + BURGERH["Coca"],
  "Best of Royal Cheese" => BURGERH["Royal Cheese"] + BURGERH["Potatoes"] + BURGERH["Sprite"]
}



def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
 count_order = 0
  orders.each do |order|
    if BURGERH.has_key?(order)
      count_order += BURGERH[order]
    else
      count_order += MENU[order]
    end
  end
  return count_order
end

# array_order = []
# puts "votre orders sérarée d'une virgule"
# choix = gets.chomp
# array_order = choix.split(", ")

p calories_counter("Coca", "Big Mac")

