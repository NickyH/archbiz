# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  quantity      :float
#  recipe_note   :text
#  ingredient_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#


class Item < ActiveRecord::Base
 attr_accessible :quantity, :recipe_note, :ingredient_id, :recipe_id
 belongs_to :ingredients
 belongs_to :recipes
end
