class Ppt < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_one :teamone
  has_one :teamtwo

  has_many :playerones, through: :teamone
  has_many :playertwos, through: :teamtwo

  validates :name, presence: true
end
