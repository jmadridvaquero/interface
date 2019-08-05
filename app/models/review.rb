class Review < ApplicationRecord
	validates :client, presence: true
	validates :content, presence: true
	belongs_to :service
end
