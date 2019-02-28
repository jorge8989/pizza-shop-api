class Flavor < ActiveRecord::Base
  validates_presence_of :name
  has_many :products
end
