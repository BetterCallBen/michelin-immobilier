class ClubsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_club, only: %i[show edit update destroy]

  def index
    @clubs = Club.all
  end

  def show
    @proprio = @club.users.first
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
    if @club.save
      redirect_to club_path(@club)
    else
      render :new
    end
  end

  def destroy
    @club.destroy
    redirect_to clubs_path
  end

  private

  def club_params
    params.require(:club).permit(:name, :background_image)
  end

  def set_club
    @club = Club.find(params[:id])
  end
end
