require "json"
require "rest-client"

# TODO: Write a seed to insert 100 posts in the database fetched from the Hacker News API.

table_data = RestClient.get 'https://hacker-news.firebaseio.com/v0/topstories.json'
table_data = JSON.parse(table_data)

table_data_top = table_data[0..10]

table_data_top.each do |id|

 post_api = RestClient.get "http://api.ihackernews.com/post/#{id}.json"
 b = JSON.parse(post_api)
 post = Post.new(name: b[:title], url: b[:url], votes: b[:score])
 post.save
end
