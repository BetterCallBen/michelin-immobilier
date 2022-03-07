class ClientMailer < ApplicationMailer
  def new_client
    @client = params[:client]
    @club = params[:club]
    mail(
      to: "contact@michelin-immobilier.fr",
      subject: 'Nouveau client'
    )
  end
end
