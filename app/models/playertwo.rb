class Playertwo < ApplicationRecord
  belongs_to :teamtwo

  validates :name, presence: true
end
