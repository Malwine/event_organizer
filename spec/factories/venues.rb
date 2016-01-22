FactoryGirl.define do
  factory :venue do
    name "Office XYZ"
    address "Street 1"
    capacity 50
    wheelchair_accessible false

    factory :venue_with_events do
      events { create_list :event, 2 }
    end
  end
end
