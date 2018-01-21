require 'open_weather'
class VisitorsController < ApplicationController
  def index
    city = SAMPLE_CITIES.sample
    weather_data city
  end

  def city
    city = params[:city_name]
    p params
    p city
    weather_data city
    render :index
  end

  private
  def weather_data(city)
    weather = OpenWeather::Current.city(city, OPEN_WEATHER_OPTIONS)
    if weather["cod"]
      @response = "#{city} is not found!"
    else
      @response = Nokogiri::HTML(weather).css('body')
    end
  end
end
