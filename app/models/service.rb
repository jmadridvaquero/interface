class Service < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true
	has_many :reviews
	translates :description, :summary, :name
end
