class ClientsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @club = Club.find(params[:club_id])
    @client = Client.new
  end

  def create
    @club = Club.find(params[:club_id])
    @client = Client.new(client_params)
    @client.club = @club
    @client.save
    redirect_to club_path(@club)
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy
  end

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :address, :free_next)
  end
end
