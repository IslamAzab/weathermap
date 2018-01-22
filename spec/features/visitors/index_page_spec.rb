# Feature: Index page
#   As a visitor
#   I want to visit a index page
#   So I can view random city weather
feature 'Index page' do

  # Scenario: Visit the index page
  #   Given I am a visitor
  #   When I visit the index page
  #   Then I see weather data
  scenario 'visit the index page' do
    visit root_path
    expect(page).to have_content 'Clouds'
    expect(page).to have_content 'Humidity'
    expect(page).to have_content 'Wind'
    expect(page).to have_content 'Pressure'
  end

  # Scenario: Visit the index page
  #   Given I am a visitor
  #   When I search the index page for a valid city
  #   Then I see weather data for my city
  scenario 'search in the index page for a valid city' do
    visit '/'

    fill_in :city_name, with: 'Berlin'
    click_button :submit

    expect(page).to have_content 'Berlin'
    expect(page).to have_content 'Clouds'
    expect(page).to have_content 'Humidity'
    expect(page).to have_content 'Wind'
    expect(page).to have_content 'Pressure'
  end
end
