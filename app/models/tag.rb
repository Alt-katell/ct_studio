class Tag < ApplicationRecord
  has_many :design_tags
  has_many :designs, through: :design_tags

end
