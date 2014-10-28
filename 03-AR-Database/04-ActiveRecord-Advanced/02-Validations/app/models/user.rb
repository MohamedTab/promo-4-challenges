class User < ActiveRecord::Base
  has_many :posts

  # TODO: Add some, validation
  validates_presence_of :username, :email
  validates_uniqueness_of :username
  validates :email, format: { with: /\A\w+@\w+\.\w{2,3}\z/, message: "invalid email" }
  before_validation :stripspaces

  def stripspaces
    self.email = email.lstrip.rstrip unless email.nil?
  end
end


# class User < ActiveRecord::Base
#  has_many :posts
#  before_validation :stripspaces

#  validates :username, uniqueness: true
# enddef stripspaces
#  self.email = email.lstrip.rstrip unless email.nil?
# end