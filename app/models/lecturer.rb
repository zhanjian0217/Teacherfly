class Lecturer < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	
	has_one_attached :mugshot, dependent: :destroy

	has_many :courses, dependent: :destroy


end
