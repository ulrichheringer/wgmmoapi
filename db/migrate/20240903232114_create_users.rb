# typed: true

class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users, id: :uuid do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :username, null: false, index: { unique: true }
      t.string :password, null: false
      t.uuid :admin_key, null: true
      t.boolean :is_admin, default: false
      t.boolean :is_premium, default: false
      t.uuid :premium_key, null: true
      t.integer :gems, default: 0
      t.integer :rank, default: 0

      t.timestamps
    end
  end
end
