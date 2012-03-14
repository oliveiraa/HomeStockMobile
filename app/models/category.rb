class Category < ActiveRecord::Base
	has_many :product_types
	attr_accessible :name, :description

	validates :name, 	:presence => true,
						:uniqueness => { :case_sensitive => false }
end
