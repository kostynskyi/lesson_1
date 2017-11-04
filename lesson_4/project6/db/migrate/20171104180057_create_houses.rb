class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :city
      t.string :street
      t.integer :number

      t.timestamps
    end
  end
end
