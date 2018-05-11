class Trip < ApplicationRecord
	has_many :days
	belongs_to :user
	validates :name, presence: true,
	validates :beginning, presence: true,
	validates :durarion, presence: true,

end
