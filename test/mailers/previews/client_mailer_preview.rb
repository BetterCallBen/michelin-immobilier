# Preview all emails at http://localhost:3000/rails/mailers/client_mailer
class ClientMailerPreview < ActionMailer::Preview
  def new_client
    ClientMailer.with(client: Client.first, club: Club.first).new_client
  end
end
