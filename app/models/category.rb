class Category < ApplicationRecord
  has_many :design_categories, dependent: :destroy
  has_many :designs, through: :design_categories

  validates :name, presence: true, inclusion: { in: ["Abstract", "Animal", "Colors", "Floral", "Geometry", "Illustration", "Kids", "Monochrome", "Placement"] }
end
