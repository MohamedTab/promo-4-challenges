def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indices (1, 3, 5, 7, etc.)
  #       You should make use Enumerable#each_with_index
   sum = 0
    array.each_with_index do |e, i|
       if i = i%2 != 0
       sum+=e
     end
    end
return sum
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select do |number|
    number%2 == 0
  end
end

def short_words(array, max_length)
  # TODO: Take and array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  max_length = 4
  array.reject do |a|
    a.length > max_length
  end

end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find do |a|
    a < limit
end
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map do |a|
    "#{a}!"
  end
end

def product(array)
  # TODO: Calculate the product of an array of numbers.
  #       You should use of Enumerable#reduce
  array.reduce do |a, i|
    result = a * i
  end
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should make use of Enumerable#each_slice
   array.each_slice(2).to_a.map { |value| value.sort }
end

