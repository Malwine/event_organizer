require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'has a valid factory' do
    event = create(:event)
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
end
