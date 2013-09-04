class Notifier < ActionMailer::Base
  default :from => ENV['GMAIL_USERNAME']

  # send a signup email to the user, pass in the user object that contains the user's email address
  def new_inquiry(inquiry)
    mail( :to => ENV['GMAIL_USERNAME'],
    :subject => 'NEW INQUIRY' )
  end
end