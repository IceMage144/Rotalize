class Hotel < ApplicationRecord
    belongs_to :city
    validates_presence_of :name
end
