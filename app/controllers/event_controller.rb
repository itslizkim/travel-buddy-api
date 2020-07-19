class EventController < ApplicationController

  def show
    response = RestClient.get "https://api.darksky.net/forecast/#{ENV['EVENTBRITE_API_KEY']}/#{params[:latitude]},#{params[:longitude]}"
    weather = JSON.parse(response)
    render json: { icon: weather["currently"]["icon"] }
  end
  
end 