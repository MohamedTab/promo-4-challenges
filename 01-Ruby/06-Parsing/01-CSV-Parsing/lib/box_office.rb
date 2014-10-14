# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  # TODO: return the number most successfull movies max_year
  array_movies = []
  csv_options = { col_sep: ',', quote_char: '"' }
  CSV.foreach(file_name, csv_options) do |row|
    array_movies << { name: row[0], year: row[1].to_i, earnings: row[2].to_i }
    array_movies = array_movies.sort { |a, b| b[:earnings] <=> a[:earnings] }
  end
  array_movies = array_movies.select { |movie| movie[:year] < max_year }
  array_movies = array_movies[0...number]
  return array_movies
end

# filepath = '/home/mohamed/code/MohamedTab/promo-4-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv'

# p most_successfull(5, 2000, filepath)