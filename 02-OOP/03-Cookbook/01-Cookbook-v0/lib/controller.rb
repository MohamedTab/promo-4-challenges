class Controller
  attr_reader :list, :create, :destroy, :router, :recipe
  def initialize(cookbook)
    @router = router
    @cookbook = cookbook
    @recipes = []
    @recipe = recipe
  end

  def list(recipe)
    @recipes << recipe
  end

  def create
    @recipe = Recipe.new(:name, :description)
    @Cookbook.add_recipe(recipe)
  end

  def detroy(index)
  @recipes.delete(index)
  @recipes
  end
end