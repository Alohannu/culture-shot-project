class RatingsController < ApplicationController
  def index
    raise
    @ratings = Rating.where(museum = params[:id])
  end

  def create
    @rating = Rating.new(ratings_params)
    @museum = Museum.find(params[:museum_id])
    @rating.museum = @museum
    @rating.user = current_user

    if @rating.save
      redirect_to museum_ratings_path(@museum)
    else
      redirect_to museum_ratings_path(@museum)
      # insert ajax remote:true (https://kitt.lewagon.com/camps/813/lectures/05-Rails%2F10-Airbnb-Ajax-in-Rails#source)
  end

  private

  def ratings_params
    params.require(:rating).permit(:title, :comments, :stars)
  end
end
