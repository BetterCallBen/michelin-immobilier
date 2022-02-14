class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @club = current_user.club
  end
end
