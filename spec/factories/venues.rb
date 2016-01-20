FactoryGirl.define do
  factory :venue do
    name "Office XYZ"
    address "Street 1"
    capacity 50
    wheelchair_accessible false

    factory :venue_with_events do
      transient do
        events_count 5
      end

      after(:create) do |venue, evaluator|
        create_list(:event, evaluator.events_count, venue: venue)
      end
    end
  end
end
