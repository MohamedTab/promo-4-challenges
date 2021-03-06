require 'faker'

# Creating 5 fake user
5.times do
  user = User.new(
    username: Faker::Name.name,
    email: Faker::Internet.email
  )
  user.save
  (5..10).to_a.sample.times do
    user.posts.create(
      name: Faker::Name.name,
      url: Faker::Internet.url,
      votes: (1..5).to_a.sample
       )
  end
end


