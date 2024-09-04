# typed: true

class CreateChests < ActiveRecord::Migration[7.2]
  def change
    create_table :chests do |t|
      t.integer :rarity
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
