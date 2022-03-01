class BookmarksController < ApplicationController
  def index
    @bookmarks = current_user.bookmarks
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to museum_path(@museum)
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.user = current_user
    @museum = Museum.find(params[:museum_id])

    @bookmark.museum = @museum

    if @bookmark.save
      redirect_to museum_path(@museum)
    else
      render :show
    end
  end
end
