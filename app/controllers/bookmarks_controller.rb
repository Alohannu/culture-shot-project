class BookmarksController < ApplicationController
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy

    redirect_to dashboard_path
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
