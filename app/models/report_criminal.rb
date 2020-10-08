class ReportCriminal < ApplicationRecord
  belongs_to :report
  belongs_to :criminal
end
