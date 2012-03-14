class Stock < ActiveRecord::Base
	has_many :stock_movements

	validates :name, :presence => true
end
