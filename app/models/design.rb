class Design < ApplicationRecord
  belongs_to :user
  has_many :design_tags
  has_many :tags, through: :design_tags
  has_many :design_categories
  has_many :categories, through: :design_categories

  validates :file_type, presence: true, inclusion: { in: ["psd", "ai"] }
  validates :pattern, presence: true, inclusion: { in: ["seamless tile", "placement"] }
  validates :price, presence: true
  validates :tags, length: { minimum: 1, maximum: 5 }
  validates :categories, length: { minimum: 1, maximum: 5 }
end
