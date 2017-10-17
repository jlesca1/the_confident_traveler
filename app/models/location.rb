class Location < ActiveRecord::Base
  # Remember to create a migration!
  has_many :bookmarks
  has_many :users, through: :bookmarks

  validates :zip_code, presence: true
end
