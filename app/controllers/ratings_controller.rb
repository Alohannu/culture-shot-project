class RatingsController < ApplicationController
  def index
    @ratings = Rating.where(params[:id])
  end

  def new
    @museum = Museum.find(params[:museum_id])
    @rating = Rating.new
  end



  def create
    @rating = Rating.new(ratings_params)
    @museum = Museum.find(params[:museum_id])
    @rating.museum = @museum
    @rating.user = current_user
    @rating.save!
    redirect_to museum_path(@museum)
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    redirect_to dashboard_path(@dashboard)
  end

  private

  def ratings_params
    params.require(:rating).permit(:title, :comment, :stars)
  end
end
