require_relative "view"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    recipes = @cookbook.recipes
    @view.list_all_recipes(recipes)
  end

  def create
    name = @view.ask_for_recipe_name
    description = @view.ask_for_recipe_description
    recipe = Recipe.new(name, description)
    @Cookbook.add_recipe(recipe)
  end

  def detroy
    @recipes.delete(index)
    @recipes
  end
end