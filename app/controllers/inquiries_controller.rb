class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    # Deliver the signup_email
    Notifier.new_inquiry(@inquiry).deliver
    if Notifier.new_inquiry(@inquiry).deliver
      render :thank_you
    else
      render :new
    end
  end

end