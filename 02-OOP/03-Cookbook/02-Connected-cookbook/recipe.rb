class Recipe
  attr_reader :name, :description, :rate,  :prep_time, :cook_time
  def initialize(name, description, rating, prep_time, cook_time)
    @name = name
    @description = description
    @prep_time = prep_time
    @cook_time = cook_time
    @rate = rate
  end
end

