class Buffet < ApplicationRecord
  belongs_to :manager

  validates :name,
            :company_name,
            :license_number,
            :phone_number,
            :email,
            presence: true

  validates :license_number, uniqueness: true
end
