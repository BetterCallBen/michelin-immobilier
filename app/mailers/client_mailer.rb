class ClientMailer < ApplicationMailer
  def new_client
    @client = params[:client]
    @club = params[:club]
    mail(
      to: "contact@michelin-immobilier.fr",
      subject: 'Nouveau client'
    )
  end

  def new_client_asso
    @client = params[:client]
    @club = params[:club]
    @email = params[:email]
    mail(
      to: @email,
      subject: 'Nouveau client'
    )
  end
end
