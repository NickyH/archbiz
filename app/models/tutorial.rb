# == Schema Information
#
# Table name: tutorials
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  video       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tutorial < ActiveRecord::Base
 attr_accessible :name, :description, :video
 has_and_belongs_to_many :recipes
end
