class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end