require_relative '../lib/models/posts.rb'

class PostsController
  def initialize
    @view = PostView.new
    @post = Post.new
  end

  ################################################################
  # BEWARE: you MUST not use the global variable DB in this file #
  ################################################################

  def index
    # TODO: implement listing all posts
    Post.all
  end

  def create
    # TODO: implement creating a new post
    Post.save
  end

  def update
    # TODO: implement updating an existing post
  end

  def destroy
    # TODO: implement destroying a post
  end

  def upvote
    # TODO: implement upvoting a post
  end
end