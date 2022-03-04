class MuseumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @museums = Museum.where("name ILIKE ?", "%#{params[:query]}%")
    elsif params[:filter] == "open"
      @array = Museum.all.select do |museum|
        museum.open(museum)
      end
      @museums = Museum.where(id: @array.pluck(:id))
    else
      @museums = Museum.all
      @museums_topics = MuseumsTopic.all
      @topics = Topic.all
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
    @message = Message.new
  end
end
