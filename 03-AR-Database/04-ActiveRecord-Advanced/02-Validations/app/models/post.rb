class Post < ActiveRecord::Base
  belongs_to :user

  # TODO: Add some validation
  validates_presence_of :user, :name, :url
  validates :name, length: { minimum: 5 }
  validates :name, uniqueness: { case_sensitive: false }
  validates :url, format: { with: /\Ahttps?\:\/\/(?:www\.|)?\w+\.\w{2,3}(?:\/\w+)?/, message: "invalid url" }
end
