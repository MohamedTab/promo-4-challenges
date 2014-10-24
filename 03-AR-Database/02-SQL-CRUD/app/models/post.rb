# You can use a global variable, DB, built as is:
# DB = SQLite3::Database.new(file)
require 'sqlite3'

class Post
  # TODO: implement some reader and/or writers
  attr_accessor :title, :url
  attr_reader :id, :save, :date, :votes, :destroy

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]
    if options[:date].nil?
      @date = Time.now
    else
      @date = options[:date]
    end
    # @date = options[:date] || Time.now
    @votes = options[:votes] || 0
  end

  # TODO: implement all the class methods and instance methods
  #       to have a full CRUD support on your Post model

  def save
    if @id.nil?
      DB.execute("INSERT INTO posts (title, url, date, votes)
      VALUES ('#{@title}', '#{@url}', #{@date.to_i}, '#{@votes}');")
      @id = DB.last_insert_row_id
    else
      DB.execute("UPDATE posts
                  SET title = '#{@title}', url = '#{@url}', date = #{@date.to_i}, votes = '#{@votes}'
                  WHERE id = #{@id}
                  ;")
    end
  end

  def upvote
    @votes += 1
  end

  def destroy
    DB.execute("DELETE FROM posts
    WHERE id = #{id};")
  end

  def self.find(id)
    a = DB.execute("SELECT * FROM posts WHERE id = #{id};")
    if a.first.nil?
      nil
    else
      a = a.flatten
      Post.new(id: a[0], title: a[1], url: a[2], votes: a[4], date: Time.at(a[3]))
    end
  end

  def self.all
    b = DB.execute("SELECT * FROM posts")
    d = []
    b.each do |c|
      d << Post.new(id: c[0], title: c[1], url: c[2], date: Time.at(c[3]), votes: c[4])
    end
    d
  end
end


