class Teamone < ApplicationRecord
  belongs_to :ppt

  has_many :playerones
end
