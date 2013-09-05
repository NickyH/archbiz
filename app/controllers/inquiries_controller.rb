class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new
    @message = params[:message]
    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
    # Deliver the inquiry_email
    Notifier.new_inquiry(@name, @email, @phone, @message).deliver
    render :new
  end

end