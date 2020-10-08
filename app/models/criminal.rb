class Criminal < ApplicationRecord
  validates_presence_of :name, :address, :phone_number
  has_many :criminal_crimes
  has_many :crimes, through: :criminal_crimes
end
