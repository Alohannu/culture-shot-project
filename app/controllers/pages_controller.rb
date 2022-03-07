class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @bookmarks = current_user.bookmarks
    @ratings = current_user.ratings
  end

  def my_profile
  end

  def redirect
  end
end
