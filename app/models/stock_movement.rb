class StockMovement < ActiveRecord::Base
	belongs_to :stock
	has_many :products

	validates :product, :presence => true

	validates :quantity, :presence => true

	validates :stock, :presence => true
end
