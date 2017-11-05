class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.string :product
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
