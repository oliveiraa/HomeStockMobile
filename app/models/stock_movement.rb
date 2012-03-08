class StockMovement < ActiveRecord::Base
	belongs_to :stock
	has_many :products
end
