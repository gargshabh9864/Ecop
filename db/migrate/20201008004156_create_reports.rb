class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :fir_no
      t.string :accused_name
      t.string :accused_number
      t.string :reporter_name
      t.string :reporter_number
      t.boolean :is_accused_filing_report, default: true
      t.text :description
      t.string :location
      t.references :crime
      t.timestamps
    end
  end
end
