require 'rails_helper'

RSpec.describe Venue, type: :model do
  it 'has a valid factory' do
    venue = create(:venue)
    expect(venue).to be_valid
  end

  it 'validates name' do
    venue = build(:venue, name: '')
    expect(venue).to_not be_valid
  end

  it 'validates address' do
    venue = build(:venue, address: '')
    expect(venue).to_not be_valid
  end

  it 'validates capacity' do
    venue = build(:venue, capacity: -3)
    expect(venue).to_not be_valid
  end

  it 'can have many events' do
    venue = create(:venue_with_events)
    expect(venue.events.first.name).to eq('ClojureBridge')
  end
end
