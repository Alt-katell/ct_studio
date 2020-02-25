class Design < ApplicationRecord
  belongs_to :user
  has_many :design_tags, dependent: :destroy
  has_many :tags, through: :design_tags
  has_many :design_categories, dependent: :destroy
  has_many :categories, through: :design_categories
  has_one_attached :photo


  validates :name, presence: true
  validates :file_type, presence: true, inclusion: { in: ["psd", "ai"] }
  validates :pattern, presence: true, inclusion: { in: ["seamless tile", "placement"] }
  validates :price, presence: true
  validates :tags, length: { minimum: 1, maximum: 5 }
  validates :categories, length: { minimum: 1, maximum: 3 }
end
