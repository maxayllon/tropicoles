class Ppt < ApplicationRecord
  has_one_attached :photo

  belongs_to :user

  has_one :teamone
  has_one :teamtwo

  has_many :playerones, through: :teamone
  has_many :playertwos, through: :teamtwo

  validates :name, presence: true
end
