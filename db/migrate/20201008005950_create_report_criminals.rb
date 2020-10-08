class CreateReportCriminals < ActiveRecord::Migration[6.0]
  def change
    create_table :report_criminals do |t|
      t.references :report
      t.references :criminal
      t.timestamps
    end
  end
end
