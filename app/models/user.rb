class User < ApplicationRecord
	has_many :joins
	has_many :events, through: :joins
end
