class User < ActiveRecord::Base
  has_many :bookmarks
  has_many :locations, through: :bookmarks

  validates :username, presence: true
  validates :email, presence: true
end
