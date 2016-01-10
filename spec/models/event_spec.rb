require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'has a valid factory' do
    #we want to use build and not create so we don't get an exception before the expectation is tested
    event = build(:event)
    expect(event).to be_valid
  end

  it 'validates name' do
    event = build(:event, name: '')
    expect(event).to_not be_valid
  end

  it 'validates start_date' do
    event = build(:event, start_date: '')
    expect(event).to_not be_valid
  end

  it 'validates end_date' do
    event = build(:event, end_date: '')
    expect(event).to_not be_valid
  end

  it 'association with venue exists = has a venue' do
    co_up = create(:venue)
    beginners_workshop = create(:event, venue_id: co_up.id)
    expect(beginners_workshop.venue).to eq(co_up)
  end

  it 'validates presence venue_id' do
    workshop = build(:event, venue_id: nil)
    expect(workshop).to_not be_valid
  end

  it 'validates that the associated venue exists' do
    workshop = build(:event, venue_id: 9999)
    expect(workshop).to_not be_valid
  end
end
