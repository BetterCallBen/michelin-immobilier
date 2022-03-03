# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  user_name: 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  password: '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', # This is the secret sendgrid API key which was issued during API key creation
  domain: 'michelin-immobilier-estimation.com',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
