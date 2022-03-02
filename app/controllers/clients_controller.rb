class ClientsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: %i[new create]

  def show
    @club = Club.find(params[:id])
    @client = Client.find(params[:club_id])
  end

  def new
    @club = Club.find(params[:club_id])
    @client = Client.new
  end

  def create
    @club = Club.find(params[:club_id])
    @client = Client.new(client_params)
    @client.club = @club
    if @client.save
      ClientMailer.with(client: @client, club: @club).new_client.deliver_later
      redirect_to club_path(@club)
    else
      render :new
    end
  end

  def edit
    @club = Club.find(params[:id])
    @client = Client.find(params[:club_id])
  end

  def update
    @club = Club.find(params[:club_id])
    @client = Client.find(params[:id])
    @client.update(client_params)
    redirect_to club_path(@club)
  end

  def destroy
    @club = Club.find(params[:id])
    @client = Client.find(params[:club_id])
    @client.destroy
    redirect_to club_path(@club)
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :address, :free_text)
  end
end
