class Tag < ApplicationRecord
  has_many :designs, through: :design_tags
end
