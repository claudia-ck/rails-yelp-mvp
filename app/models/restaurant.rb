class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: [ "chinese", "italian", "japanese", "french", "belgian" ], message: "%{value} is invalid" }
  validates :phone_number, format: { with: /\A\+?\d[\d\s]{10,15}\z/, message: "must be a valid phone number" }, allow_blank: true
end
