class Location < ActiveRecord::Base
  has_many :bookmarks
  has_many :users, through: :bookmarks

  validates :zip_code, presence: true
end
