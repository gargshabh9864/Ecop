class CreateCriminalCrimes < ActiveRecord::Migration[6.0]
  def change
    create_table :criminal_crimes do |t|
      t.references :criminal
      t.references :crime
      t.timestamps
    end
  end
end
