class Bookmark < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  belongs_to :location

  validates :name, presence: true
end
