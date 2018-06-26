class Place < ApplicationRecord
  belongs_to :local, foreign_key: :local_id
  has_and_belongs_to_many :days
  ########################################
  validates :name,         presence: true
  validates :placetype,    presence: true
  # validates :description,  presence: true
  # validates :address,      presence: true
  # validates :openinghours, presence: true
  # validates :price,        presence: true
  # validates :img,          presence: true

  def get_name
    return "#{name}"
  end
end
