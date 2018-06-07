class Place < ApplicationRecord
  belongs_to :local
  validates :name, presence: true
  validates :placetype, presence: true
  validates :opentime, presence: true
  validates :closetime, presence: true
  validates :img, presence: true
  validates :description, presence: true
  validates :address, presence: true
end
