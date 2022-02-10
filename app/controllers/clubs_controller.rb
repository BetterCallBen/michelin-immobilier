class ClubsController < ApplicationController
  before_action :set_club, only: %i[show destroy]
  before_action :authenticate_user!

  def index
    @clubs = Club.all
    @my_club = current_user.club
  end

  def show
    @proprios = @club.users
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
    params.require(:club).permit(:name, :bg_image)
  end

  def set_club
    @club = Club.find(params[:id])
  end
end
