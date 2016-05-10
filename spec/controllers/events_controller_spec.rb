require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe "#create" do
    it 'creates a new event' do
      venue = create(:venue)
      post :create, event: FactoryGirl.attributes_for(:event).merge(venue_id: venue.id)
      expect(Event.count).to eq 1
    end
  end
end
