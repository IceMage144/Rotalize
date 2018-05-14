class Local < ApplicationRecord
    has_many :places
    has_one :user

    def initialize (name, country, currency, img)
        super()
        @name = name
        @country = country
        @currency = currency
        @img = img
    end
end
