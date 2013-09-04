# class InquiriesController < ApplicationController

#   def new
#     @inquiry = Inquiry.new
#   end

#   def create
#     @inquiry = Inquiry.new(params[:inquiry])
#     # Deliver the inquiry_email
#     Notifier.new_inquiry(@inquiry).deliver
#     render :new
#   end

# end