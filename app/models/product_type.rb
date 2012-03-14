class ProductType < ActiveRecord::Base
	belongs_to :category
	has_many :products

	validates :name, 	:presence => true,
						:uniqueness => { :case_sensitive => false }

	validates :category, 	:presence => true
end
