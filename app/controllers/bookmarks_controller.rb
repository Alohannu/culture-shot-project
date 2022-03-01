class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to museum_path(@museum)
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.user = current_user

    @museum = Museum.find(params[:museum_id])
    @bookmark.museum.id = @museum.id

    if @bookmark.save
      redirect_to museum_path(@bookmark)
    else
      render :show
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:museum_id)
  end
end
