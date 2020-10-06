class CreateCriminals < ActiveRecord::Migration[6.0]
  def change
    create_table :criminals do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.string :aadhar_card_number
      t.integer :number_of_crime, default: 0
      t.timestamps
    end
  end
end
