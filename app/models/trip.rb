class Trip < ApplicationRecord
  has_many :days
  has_many :places, through: :days
	belongs_to :user
	# validates :name
	# validates :beginning
	# validates :duration
end
