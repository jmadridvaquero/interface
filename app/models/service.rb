class Service < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true
	has_many :reviews
end
