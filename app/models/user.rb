class User < ApplicationRecord
	has_many :joins, foreign_key: :guest
	has_many :attended_events, through: :joins, :source	=> :attended_event
	has_many :created_events, :foreign_key => :creator_id, :class_name => "Event"

	before_save :capitalize_name

def capitalize_name
  self.name = self.name.split.collect(&:capitalize).join(' ') if self.name && !self.name.blank?
end



end
