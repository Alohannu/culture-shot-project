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
    # check_availability
    @museum = Museum.find(params[:id])
    @bookmark = Bookmark.where(user: current_user, museum: @museum)
    @rating = Rating.new
    @chatroom = @museum.chatroom
    @message = Message.new
    # raise
    @markers = [{
        lat: @museum.latitude,
        lng: @museum.longitude,
        info_window: render_to_string(partial: "info_window", locals: { museum: @museum }),
        image_url: helpers.asset_url("https://res.cloudinary.com/dpi7g4swb/image/upload/v1646733261/Scenic%20Photos%20for%20Homepage%20etc/marker_rwwgsq.png")
      }]
  end

  def check_availability
    browser = Watir::Browser.new

    # Access website
    browser.goto(@museum.ticket_url)

    # Wait to load
    sleep(3)

    # Click on button for day 05
    browser.button(text: "03").click

    # Wait to load
    sleep(3)

    # Parse the page to a Nokogiri object
    parsed_page = Nokogiri::HTML(browser.html)

    # Search and print for alert
    p parsed_page.search(".alert")

    #close the browser
    browser.close
      end

end
