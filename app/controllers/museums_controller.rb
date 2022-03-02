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
    @museum = Museum.find(params[:id])
    @rating = Rating.new
  end
end
