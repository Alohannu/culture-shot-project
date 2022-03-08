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
      @museums= []
      @museums = Museum.joins(:museums_topics).where(museums_topics: {topic_id: @topic.id})
          # @museums_topics = MuseumsTopic.where(topic_id: Topic.where(name: params["Topics"]))
          # @museums_topics.each do |tag|
          # @museums << Museum.where(id: tag[:museum_id])
          # end
          # @museums = Museum.where(id: @museums.pluck(:id))
    else
      @museums = Museum.all
    end

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
    @rating = Rating.new
    @chatroom = @museum.chatroom
    @message = Message.new
    @markers = [{
        lat: @museum.latitude,
        lng: @museum.longitude,
        info_window: render_to_string(partial: "info_window", locals: { museum: @museum })
      }]
      # raise
  end
end
