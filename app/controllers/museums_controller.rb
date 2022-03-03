require 'watir'

class MuseumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @museums = Museum.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @museums = Museum.all
    end
  end

  def show
    check_availability
    @museum = Museum.find(params[:id])
    @rating = Rating.new
    @chatroom = @museum.chatroom
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
