class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.references :node
      t.string :aac
      t.string :https
      t.timestamps
    end
  end
end
