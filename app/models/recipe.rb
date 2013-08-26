# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  key_ingredient :text
#  preptime       :text
#  cooktime       :text
#  image          :text
#  instructions   :text
#  servings       :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#


class Recipe < ActiveRecord::Base
 attr_accessible :title, :key_ingredient, :preptime, :cooktime, :image, :instructions, :servings, :ingredient_ids
 belongs_to :user
 has_many :ingredients
 has_many :items
 has_and_belongs_to_many :tutorials

 def cost_per_serve
  cost_per_unit = self.ingredients.map(&:cost_per_unit)
  quantity = self.items.map(&:quantity)
  bought_quantity = self.ingredients.map(&:std_unit_quantity)
  items_quant = bought_quantity.zip(quantity).map{|b,q| q/b }
  items_cost = items_quant.zip(cost_per_unit).map{|a,b| a*b }
  total = items_cost.inject{|sum,x| sum + x } || 0
 end
 def total_time
  time = self.preptime.zip(self.cooktime).map{|p,c| (p.to_i)+(c.to_i) }
 end

end
