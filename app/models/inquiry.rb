# class Inquiry
#   extend ActiveModel::Naming
#   include ActiveModel::Conversion
#   include ActiveModel::Validations
#   include ActionView::Helpers::TextHelper

#   attr_accessor :name, :email, :message, :nickname

#   validates :name,
#             :presence => true

#   validates :email,
#             :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ },
#             :presence => true

#   validates :message,
#             :length => { :maximum => 1000 }

#   validates :nickname,
#             :format => { :with => /^$/ }

#   def initialize(attributes = {})
#     attributes = {}
#     attributes.each do |name, value|
#       send("#{name}=", value)
#     end
#   end

#   def persisted?
#     false
#   end
# end