require_relative "view"
require_relative 'cookbook'
require_relative 'recipe'

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
    recipe = Recipe.new(name, description)
    @Cookbook.add_recipe(recipe)
  end

  def detroy
    @recipes.delete(index)
    @recipes
  end

  def web_import
    Marmiton.new(:key_word)
    @cookbook.add_recipe(recipe)
  end
end