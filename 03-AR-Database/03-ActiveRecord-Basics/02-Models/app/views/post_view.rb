class PostView
  def ask_for_post
    post = []
    puts "Title?"
    print "> "
    post[0] = gets.chomp
    puts "URL?"
    print "> "
    post[1] = gets.chomp
  end

  def ask_for_id
    loop do
      puts "Which post id?"
      print "> "
      begin
      return Integer(gets.chomp)
    rescue ArgumentError
      puts "Please enter a valid id..."
    end
    end
  end

  def print_post_not_found(id)
    puts "Could not find any post with id '#{id}'"
  end

  def print_successfully_created(post)
    puts "Post '#{post.title}' has been successfully created"
  end

  def print_successfully_updated(post)
    puts "Post '#{post.title}' has been successfully updated"
  end

  def print_successfully_destroyed(post)
    puts "Post '#{post.title}' has been successfully destroyed"
  end

  def print_successfully_upvoted(post)
    puts "Post '#{post.title}' has been successfully upvoted"
  end
end