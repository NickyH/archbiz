class InquiryMailer < ActionMailer::Base
  include SendGrid
  default from: "from@example.com"
end
