class Product < ActiveRecord::Base
	belongs_to :product_type
	belongs_to :stock
	attr_accessible :name, :product_type, :barcode

	validates :name, 	:presence => true

	validates :product_type, 	:presence => true
								
	validates :barcode, 	:presence => true,
							:uniqueness => { :case_sensitive => false }
end
