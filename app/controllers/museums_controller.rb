class MuseumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @museums = Museum.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @museums = Museum.all
    end

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @museums.geocoded.map do |museum|
      {
        lat: museum.latitude,
        lng: museum.longitude
      }
    end
  end

  def show
    @museum = Museum.find(params[:id])
    @rating = Rating.new
    @chatroom = @museum.chatroom
  end
end
