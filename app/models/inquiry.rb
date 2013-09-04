class Inquiry < ActionMailer::Base
  default :from => ENV['GMAIL_USERNAME']

  attr_accessor :name, :email, :message, :nickname

  validates :name,
            :presence => true

  validates :email,
            :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ },
            :presence => true

  validates :message,
            :length => { :maximum => 1000 }

  validates :nickname,
            :format => { :with => /^$/ }

  def initialize(attributes = {})
    attributes = {}
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  # send a signup email to the user, pass in the user object that contains the user's email address
  def new_inquiry(inquiry)
    mail( :to => ENV['GMAIL_USERNAME'],
    :subject => 'NEW INQUIRY' )
  end

end