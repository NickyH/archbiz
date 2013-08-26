# == Schema Information
#
# Table name: ingredients
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  units             :text
#  cost_per_unit     :decimal(, )
#  std_unit_quantity :float
#  recipe_id         :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#


class Ingredient < ActiveRecord::Base
 attr_accessible :name, :units, :cost_per_unit, :std_unit_quantity
 belongs_to :recipes
 has_many :items
end
