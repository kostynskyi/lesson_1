class CreateWorlds < ActiveRecord::Migration[5.1]
  def change
    create_table :worlds do |t|
      t.string :part
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
