class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :lenght
      t.string :width
      t.string :hight
      t.string :square

      t.timestamps
    end
  end
end
