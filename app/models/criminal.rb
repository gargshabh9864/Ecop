class Criminal < ApplicationRecord
  validates_presence_of :name, :address, :phone_number
  has_many :criminal_crimes
  has_many :crimes, through: :criminal_crimes

  validates :phone_number, format: { with: /^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$/, :multiline => true }
end
