class Day < ApplicationRecord
  belongs_to :trip, foreign_key: :trip_id
  has_and_belongs_to_many :places
  ########################################
  validates :date, presence: true
end
