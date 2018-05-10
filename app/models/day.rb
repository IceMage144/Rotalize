class Day < ApplicationRecord
    has_many :places
    belongs_to :trip
    def initialize (number)
		@number = number
	end

end
