require 'rails_helper'

feature 'Welcome page' do
  scenario 'see welcome page' do
    visit '/'
    expect(page).to have_content('Organize your event') # page comes from capybara
  end
end
