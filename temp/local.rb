class Local < ApplicationRecord
    has_many :places

    validates :name, presence: true
    validates :country, presence: true
    validates :currency, presence: true
    validates :img, presence: true

end
