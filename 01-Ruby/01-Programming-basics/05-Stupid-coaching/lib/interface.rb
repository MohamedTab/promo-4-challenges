require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coache terminal.
puts "comment ca va?"
my_message = gets.chomp

while my_message != ""
  puts coach_answer_enhanced(my_message)
  my_message = gets.chomp
end
