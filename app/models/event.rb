class Event < ActiveRecord::Base
  validates :name, :start_date, :end_date, presence: true
end
