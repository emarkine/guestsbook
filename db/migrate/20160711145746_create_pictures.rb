class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.date :date, null: false
      t.time :time, null: false
      t.string :name, null: false
    end
  end
end
