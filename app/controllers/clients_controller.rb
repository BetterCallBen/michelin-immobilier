class ClientsController < ApplicationController
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
      redirect_to root_path
    else
      render :new
    end
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
