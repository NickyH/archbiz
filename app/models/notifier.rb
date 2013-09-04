class Notifier < ActionMailer::Base
  default :from => ENV['GMAIL_USERNAME']
  default :to => ENV['GMAIL_USERNAME']

  # send inquiry contact email to website owner
  def new_inquiry(inquiry)
    mail( :subject => 'NEW INQUIRY', :text => 'new inquiry test' )
  end

end