class DesignTag < ApplicationRecord
  belongs_to :design
  belongs_to :tag

  validates :tag, uniqueness: { scope: :design, message: 'Already Added'}
end
