# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Archbiz_app::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'sendgridusername',
  :password => 'sendgridpassword',
  :domain => 'seahhughesarch.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}