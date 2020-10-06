class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.text :address
      t.string :contact_person_name
      t.string :contact_person_number
      t.timestamps
    end
  end
end
