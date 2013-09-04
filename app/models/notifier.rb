class Notifier < ActionMailer::Base
  default :from => 'inquiry@example.com'

  # send inquiry contact email to website owner
  def new_inquiry(inquiry)
    binding.pry
    mail( :to => ENV['GMAIL_USERNAME'],
    :subject => 'NEW INQUIRY' )
  end

end