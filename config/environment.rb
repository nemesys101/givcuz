# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Bootprod::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => 587,
  :address        => "smtp.mandrillapp.com",
  :user_name      => ENV["MANDRILL_USERNAME"],
  :password       => ENV["MANDRILL_PASSWORD"],
  :domain         =>'heroku.com',
  :authentication => :plain
}

ActionMailer::Base.delivery_method = :smtp
