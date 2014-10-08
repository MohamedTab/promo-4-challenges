require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.1.2/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.1.2/String.html#method-i-chomp



# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
students = []
student = "khgvlkj"
  while student != ""
    puts "ajouter un étudiant"
    student = gets.chomp
    if student != ""
      students.push(student)
    else
      puts "ajouter un étudiant"
end
  end

number = students.length
liste = wagon_sort(students)


    puts "Congratulations! Your Wagon has #{number} student :
    #{liste}"











