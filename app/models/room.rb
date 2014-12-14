class Room < ActiveRecord::Base
	has_many :room_categories
	has_many :categories, through: :room_categories
end
