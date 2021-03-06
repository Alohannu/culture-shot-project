class BookmarksController < ApplicationController
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    if params[:from_dashboard] == 'false'
      redirect_to @bookmark.museum
    else
      redirect_to dashboard_path
    end
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    @museum = Museum.find(params[:museum_id])
    @bookmark.museum = @museum
    @bookmark.save!
    redirect_to museum_path(@museum)
  end
end
