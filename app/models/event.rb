class Event < ApplicationRecord
	has_many :joins
	has_many :users, through: :joins
	belongs_to :creators, :class_name => "User"
end
