class Day < ApplicationRecord
    has_may :hotels
    has_many :museums
    has_many :monuments
    has_many :restaurants

    def initialize (name, day. month, year)
		@name = name
		@day = day
		@month = month
		@year = year
	end

end
