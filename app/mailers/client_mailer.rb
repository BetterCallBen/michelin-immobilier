class ClientMailer < ApplicationMailer
  def new_client
    @client = params[:client]
    @club = params[:club]
    mail(
      to: "benjbdk@gmail.com",
      subject: 'Nouveau client'
    )
  end
end
