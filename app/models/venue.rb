class Venue < ActiveRecord::Base
  validates :name, :address, presence: true
  validates :capacity, numericality: { greater_than: 1 }
  has_many :events
end
