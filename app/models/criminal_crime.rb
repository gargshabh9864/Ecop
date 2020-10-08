class CriminalCrime < ApplicationRecord
  belongs_to :criminal
  belongs_to :crime
end
