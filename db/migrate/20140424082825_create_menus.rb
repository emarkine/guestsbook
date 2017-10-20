class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :ref
      t.integer :position
    end
    add_index(:menus, :name, :unique => true)
    create_table :menus_users, :id => false do |t|
      t.references :menu, :null => false
      t.references :user, :null => false
    end
    add_index(:menus_users, [:menu_id, :user_id], :unique => true)
  end
end
