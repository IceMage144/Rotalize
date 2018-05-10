class Place < ApplicationRecord
    belongs_to :local
    has_one :user
    def initialize(name, description, type, img, comments, address, op_hour, price)
        @name = name

    end
end
