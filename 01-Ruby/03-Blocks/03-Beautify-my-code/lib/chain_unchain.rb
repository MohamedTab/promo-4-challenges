def shuffle_word(a_word)
  # TODO: refactor this method

  shuffle_array = a_word.upcase.chars.to_a.shuffle

  shuffle_array

end


def quote_prime_numbers(n)
  # TODO: refactor this method

  a = (1..n).find_all {|i| (2..i-1)}.select {|k| i % k == 0 }.count == 0 }
    a = a.map{ |prime_num| "#{prime_num} is prime"}
end