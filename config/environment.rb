# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Archbiz_app::Application.initialize!


ActionMailer::Base.smtp_settings = {
  :address => "smtp.sendgrid.net",
  :port => 25,
  :domain => "mysite.com",
  :authentication => :plain,
  :user_name => "sendgrd_username",
  :password => "sendgrid_password"
}