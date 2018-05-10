class Trip < ApplicationRecord
	has_many :days
	belongs_to :user
	
	def initialize (name, beginning, durarion)
		@name = name
		@beginning = beginning
		@durarion = durarion
	end

end
