class Teamtwo < ApplicationRecord
  belongs_to :ppt

  has_many :playertwos

  validates :name, presence: true
end
