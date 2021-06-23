class Ppt < ApplicationRecord
  belongs_to :user

  has_one :teamone
  has_one :teamtwo

  validates :name, presence: true
end
