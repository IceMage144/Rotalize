class Trip < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :days
  has_many :places, through: :days
  ########################################
	validates :name,      presence: true
	validates :beginning, presence: true
	validates :duration,  presence: true
end
