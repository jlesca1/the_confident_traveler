class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :bookmarks
  has_many :locations, through: :bookmarks

  validates :username, presence: true
  validates :email, presence: true
end
