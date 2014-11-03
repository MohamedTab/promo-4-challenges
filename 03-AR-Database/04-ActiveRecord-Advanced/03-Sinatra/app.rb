require 'sinatra'
require "sinatra/reloader" if development?
require_relative "config/application.rb"

set :views, proc { File.join(root, "app/views") }





get '/' do
  # TODO: fetch posts from database.
  #       to pass them to the view, store them in an instance variable
  @posts = Post.all

  erb :posts  # The rendered HTML is in app/views/posts.erb
end

post '/create_post' do
  name = params["name"]
  url = params["url"]

  Post.create(name: name, url: url)

  redirect("/")
end

get 'post/:post_id/voteup' do
  id = params[:post_id]
  @post = Post.find(id)

  post.votes += 1
  post.save

  redirect("/")
end

get '/post/:id' do
  id = params[:id]
  @post = Post.find(id)

  erb :post
end