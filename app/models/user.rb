class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :designs, dependent: :destroy
  has_many :purchases, dependent: :destroy

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state_province, presence: true
  validates :zip_code, presence: true
  validates :country, presence: true
  validates :phone_number, presence: true
  validates :company_name, presence: true, if: :company
  validates :website, presence: true, if: :company
end
