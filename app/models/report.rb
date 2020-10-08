class Report < ApplicationRecord
  validates_presence_of :accused_name, :accused_number,
                        :is_accused_filing_report,
                        :description, :location
  has_many :report_criminal
  has_many :criminals, through: :report_criminal
  validates :accused_number, format: { with: /^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$/, :multiline => true }

  validates :reporter_number, format: { with: /^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$/, :multiline => true }



end
