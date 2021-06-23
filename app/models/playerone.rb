class Playerone < ApplicationRecord
  belongs_to :teamone

  validates :name, presence: true
end
