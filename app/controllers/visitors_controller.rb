require 'open_weather'
class VisitorsController < ApplicationController
  def index
    city = SAMPLE_CITIES.sample
    weather = OpenWeather::Current.city(city, OPEN_WEATHER_OPTIONS)
    if weather["cod"]
      @response = "#{city} is not found!"
    else
      @response = Nokogiri::HTML(weather).css('body')
    end
  end
end
