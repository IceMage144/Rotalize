class Local < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :places
  ########################################
  validates :name,     presence: true
  validates :country,  presence: true
  validates :currency, presence: true
  # validates :img,      presence: true
end
