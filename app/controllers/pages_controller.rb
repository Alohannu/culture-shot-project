class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @quotes = Quote.all
    @quote = Quote.find(rand(1..Quote.count))
  end

  def dashboard
    @bookmarks = current_user.bookmarks
    @ratings = current_user.ratings
  end

  def my_profile
  end

  def redirect
  end

  def cn
    @quotes = Quote.all
    @quote = Quote.find(rand(1..Quote.count))
    @disable_nav = true
  end
end
