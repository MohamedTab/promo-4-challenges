require 'open-uri'
def analyze(text)
  # TODO: should analyze the text, and return the result hash with all features
file_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath = '/home/mohamed/Bureau/olivier.txt'
file = File.open(filepath, 'r', )
end