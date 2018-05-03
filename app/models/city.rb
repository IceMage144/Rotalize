class City < ApplicationRecord
    has_many :museums
    has_many :hotels
    has_many :monuments
    has_many :restaurants
    validates_presence_of :name
end
