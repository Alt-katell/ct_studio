class Design < ApplicationRecord
  belongs_to :user
  has_many :design_tags, dependent: :destroy
  has_many :tags, through: :design_tags
  has_many :design_categories, dependent: :destroy
  has_many :categories, through: :design_categories
  has_one_attached :photo


  validates :name, presence: true
  validates :photo, presence: true
  validates :file_type, presence: true
  validates :pattern, presence: true, inclusion: { in: ["seamless tile", "placement"] }
  validates :price, presence: true
  validates :tags, presence: true, length: {minimum: 1, maximum: 5, message: "Please choose between 1 and 5 tags"}
  validates :tags, presence: true, length: {minimum: 1, maximum: 3, message: "Please choose at least one color"}, inclusion: { in: ["red", "yellow", "blue", "green", "pink", "black"] }

  validates :categories, presence: true, length: {minimum: 1, maximum: 3, message: "Please choose between 1 and 3 caategories"}

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :file_type, :pattern ],
    associated_against: {
      tags: :name
    },
    using: {
      tsearch: { prefix: true }
    }

end
