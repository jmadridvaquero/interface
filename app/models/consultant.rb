class Consultant < ApplicationRecord
	validates :name, presence: true
	validates :photo, presence: true
	validates :bio, presence: true
	validates :expertise, presence: true
end
