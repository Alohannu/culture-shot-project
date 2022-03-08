class BookmarksController < ApplicationController
  def destroy
    # raise
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    if params[:from_dashboard] == 'false'
      redirect_to @bookmark.museum
    else
      redirect_to dashboard_path
    end

    # redirect_to @bookmark.museum
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    @museum = Museum.find(params[:museum_id])

    @bookmark.museum = @museum

    if @bookmark.save
      redirect_to museum_path(@museum)
    else
      redirect_to museum_path(@museum) # to implement an error message
    end
  end
end
