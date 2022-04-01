# require 'watir'

class MuseumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @topics = Topic.all
    @topic = Topic.new
    if params[:query].present?
      @museums = Museum.where("name ILIKE ?", "%#{params[:query]}%")
    elsif params[:filter] == "open"
      @array = Museum.all.select do |museum|
        museum.open(museum)
      end
      @museums = Museum.where(id: @array.pluck(:id))
    elsif params["Topics"].present?
      @topic = Topic.find_by(name: params["Topics"])
      @museums = []
      @museums = Museum.joins(:museums_topics).where(museums_topics: {topic_id: @topic.id})
    else
      @museums = Museum.all
    end
    geocode_index
  end

  def geocode_index
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @museums.geocoded.map do |museum|
      {
        lat: museum.latitude,
        lng: museum.longitude,
        info_window: render_to_string(partial: "info_window", locals: { museum: museum }),
        image_url: helpers.asset_url("https://res.cloudinary.com/dpi7g4swb/image/upload/v1646733261/Scenic%20Photos%20for%20Homepage%20etc/marker_rwwgsq.png")
      }
    end
  end

  def show
    @museum = Museum.find(params[:id])
    @bookmark = Bookmark.where(user: current_user, museum: @museum)
    @rating = Rating.new
    @chatroom = @museum.chatroom
    @message = Message.new
    geocode_show
  end

  def geocode_show
    @markers = [{
      lat: @museum.latitude,
      lng: @museum.longitude,
      info_window: render_to_string(partial: "info_window", locals: { museum: @museum }),
      image_url: helpers.asset_url("https://res.cloudinary.com/dpi7g4swb/image/upload/v1646733261/Scenic%20Photos%20for%20Homepage%20etc/marker_rwwgsq.png")
    }]
  end
end
