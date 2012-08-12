class Order < ActiveRecord::Base
  attr_accessible :price

  belongs_to :customer
end
