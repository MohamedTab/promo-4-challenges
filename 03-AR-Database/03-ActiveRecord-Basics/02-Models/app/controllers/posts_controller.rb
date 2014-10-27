require_relative "../views/post_view.rb"

class PostsController
  def initialize
    @view = PostView.new
    @votes = 0
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    Post.all
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    Post_data = @view.ask_for_post
    post.name = post_data[0]
    post.url = post_data[1]
    post.save
    @view.print_successfully_created(post)
  end

  def update(id)
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    post = Post.find(id)
    post_data = @view.ask_for_post
    post.name = post_data[0]
    post.url = post_data[1]
    post.save
    @view.print_successfully_updated(post)
  end

  def destroy(id)
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    post = Post.find(id)
    post.destroy
    @print_successfully_destroyed
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    @votes += 1
  end
end