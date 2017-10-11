class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :surname, null: false
      t.string :lang, null: false
      t.references :country, null: false
      t.references :currency, null: false
      # t.string :role, :null => false
      t.date :birthday
      t.string :personal_code
      #t.string :email
      t.string :mobile
      t.string :phone_home
      t.string :phone_work
      t.string :skype
      t.string :site
      t.string :company
      t.string :activity
      t.string :street
      t.string :postcode
      t.string :city
      t.string :region
      t.references :invited
      t.decimal :balance, :precision => 10, :scale =>2
      t.text :about
      t.text :properties
      t.text :note

      t.string :start_page
      t.string :photo
      t.string :audio
      t.string :video

      t.string :password_digest

      t.string :activation_code
      t.datetime :sending_time
      t.datetime :last_login
      t.integer :incorrect_password_count, :default => 0
      t.boolean :locked
      t.timestamps

      # # ------------------------------------------- Devise --------------------------------------------------------- #
      # ## Database authenticatable
      # t.string :email,              :null => false, :default => ""
      # t.string :encrypted_password, :null => false, :default => ""
      #
      # ## Recoverable
      # t.string   :reset_password_token
      # t.datetime :reset_password_sent_at
      #
      # ## Rememberable
      # t.datetime :remember_created_at
      #
      # ## Trackable
      # t.integer  :sign_in_count, :default => 0
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip
      #
      # ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable
      #
      # ## Lockable
      # t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at
      #
      # ## Token authenticatable
      # t.string :authentication_token

    end
    add_index :users, :email,                :unique => true
    # add_index :users, :reset_password_token, :unique => true

  end
end
