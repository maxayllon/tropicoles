class Teamone < ApplicationRecord
  belongs_to :ppt

  has_many :playerones

  validates :name, presence: true
end
