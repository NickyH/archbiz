class Notifier < ActionMailer::Base
  default :from => 'any_from_address@example.com'

  # send inquiry contact email to website owner
  def new_inquiry(inquiry)
    mail( :to => ENV['GMAIL_USERNAME'],
    :subject => 'NEW INQUIRY' )
  end

end