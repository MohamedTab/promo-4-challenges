class View
  def list_all_recipes(recipes)
    puts "Here are all your recipes, my lord"
    recipes.each do |recipe|
      puts "#{recipe.name} : #{recipe.description}"
    end
  end

  def ask_for_recipe_name
    gets.chomp
  end

  def ask_for_recipe_description
    gets.chomp
  end
end