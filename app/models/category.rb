class Category < ApplicationRecord
	attr_accesible :name,
	has_many :posts
end
