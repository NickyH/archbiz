class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(params[:inquiry])
    # Deliver the signup_email
    Inquiry.new_inquiry(@inquiry).deliver
    render :new
  end

end