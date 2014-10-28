require 'nokogiri'
require 'open-uri'
require_relative 'recipe'

class Marmiton
  attr_reader :key_word
  def initialize(key_word)
    puts "Import recipes for which ingredient ?"
    key_word = gets.chomp
    recipes = []
    url = "http://www.marmiton.org/recettes/recherche.aspx?aqt=" + key_word
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    doc.css('.m_contenu_resultat').each do |element|
      name = element.search('.m_titre_resultat > a').inner_text
      description = "Description : #{element.search('.m_texte_resultat').inner_text}"
      rating = "#{element.search('.m_recette_note1').size} / 5"
      prep_time = "Le temps de préparation est :#{element.search('.m_detail_time').inner_text.split("min").to_a[0]}"
      cook_time = "Le temps de cuisson est : #{element.search('.m_detail_time').inner_text.split("min").to_a[1]}"
      recipes << Recipe.new(:name, :description, :rating, :prep_time, :cook_time)
    end
  end
end


