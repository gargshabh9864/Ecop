class Station < ApplicationRecord
  validates_presence_of :name, :address, :contact_person_name, :contact_person_number
end
