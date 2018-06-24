class User < ApplicationRecord
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :trips
	has_many :places
	########################################
	validates :name, presence: true
  # validates :img,  presence: true
end
