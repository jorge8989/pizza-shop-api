class Product < ActiveRecord::Base
  validates_presence_of :food_id
  belongs_to :food
  belongs_to :order
  belongs_to :flavor
  has_and_belongs_to_many :toppings
end
