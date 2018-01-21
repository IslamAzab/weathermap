# Feature: Index page
#   As a visitor
#   I want to visit a index page
#   So I can view random city weather
feature 'Index page' do

  # Scenario: Visit the index page
  #   Given I am a visitor
  #   When I visit the index page
  #   Then I see "Welcome"
  scenario 'visit the index page' do
    visit root_path
    expect(page).to have_content 'Clouds'
    expect(page).to have_content 'Humidity'
    expect(page).to have_content 'Wind'
    expect(page).to have_content 'Pressure'
  end

end
