def wagon_sort(students)
  # TODO: return (not print!) a copy of students, sorted alphabetically
  students = students.sort_by {|word| word.downcase}
  return students
end

