FactoryGirl.define do
  factory :event do
    name "ClojureBridge"
    start_date "2016-01-10"
    end_date "2016-01-10"
    venue  #create one venue using the factory and store the venue_id
  end
end
