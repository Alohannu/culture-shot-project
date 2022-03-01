class MuseumsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @museums = Museum.all
  end

  def show
    @museum = Museum.find(params[:id])
  end

end
