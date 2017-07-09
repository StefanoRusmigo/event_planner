class Event < ApplicationRecord
	has_many :joins, foreign_key: :attended_event
	has_many :guests, through: :joins, source: :guest
	belongs_to :creator, :class_name => "User"

	scope :upcoming, ->{where('date >= ?', Date.today)}
	scope :past, ->{where('date < ?', Date.today)}

	
end
