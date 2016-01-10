class Event < ActiveRecord::Base
  validates :name, :start_date, :end_date, presence: true
  belongs_to :venue, required: true
end
