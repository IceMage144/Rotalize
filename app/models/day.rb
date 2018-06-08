class Day < ApplicationRecord
  belongs_to :trip
  has_and_belongs_to_many :places
  validates :date, presence: true
end
