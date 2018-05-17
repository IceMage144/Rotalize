class Day < ApplicationRecord
    has_many :places
    belongs_to :trip
    validates :date, presence: true

end
