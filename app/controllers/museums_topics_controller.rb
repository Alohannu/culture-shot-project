class MuseumsTopicsController < ApplicationController
  def index
    @museums_topic = MuseumsTopic.all
    @topics = Topic.all
  if params[:filter] == "open"

  else
    @museums_topic = MuseumsTopic.all
  end

  def show
    @museums_topic = MuseumsTopic.find(params[:id])
  end

end
