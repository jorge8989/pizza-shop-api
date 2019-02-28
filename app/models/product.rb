class Product < ActiveRecord::Base
  belongs_to :food
  belongs_to :order
  belongs_to :flavor
end
