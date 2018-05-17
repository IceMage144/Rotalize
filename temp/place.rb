class Place < ApplicationRecord
    belongs_to :local
    belongs_to :user
    validates :name, presence: true
    validates :type, presence: true
    validates :time, presence: true
    validates :img, presence: true
    validates :description, presence: true
    validates :address, presence: true

end
