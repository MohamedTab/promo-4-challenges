require_relative "compute_name"

# TODO: ask for the first name
# TODO: ask for the middle name
# TODO: ask for the last name
# TODO: Print a greeting to the user with the full name concatenated,
#       something like "Hello, Boris Paillard"
puts "quel est votre nom? "
first_name = gets.chomp

puts "quel est votre second nom?"
middle_name = gets.chomp

puts "quel est votre 3ieme nom"
last_name = gets.chomp


puts "Hello, #{compute_name(first_name, middle_name, last_name)}"


