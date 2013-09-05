class Notifier < ActionMailer::Base
  default :from => ENV['GMAIL_USERNAME']
  default :to => ENV['GMAIL_USERNAME']

  # send inquiry contact email to website owner
  def new_inquiry(name, email, phone, message)
    mail( :to => ENV['GMAIL_USERNAME'],
          :from => ENV['GMAIL_USERNAME'],
          :subject => 'NEW INQUIRY' + ' from ' + name,
          :text => message )
  end

end