class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    @message = params[:message]
    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
    # Deliver the inquiry_email

    if Notifier.new_inquiry(@name, @email, @phone, @message).deliver
       redirect_to('/', :notice => "Support was successfully sent.")
    else
      flash[:alert] = "You must fill all fields."
    render nothing: true
  end

end