class Station < ApplicationRecord
  validates_presence_of :name, :address, :contact_person_name, :contact_person_number
  validates :contact_person_number, format: { with: /^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$/, :multiline => true }
end
