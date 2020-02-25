class DesignCategory < ApplicationRecord
  belongs_to :design
  belongs_to :category

  validates :category, uniqueness: { scope: :design, message: 'Already Added'}
end
