# typed: true

class CreateItemCatalogs < ActiveRecord::Migration[7.2]
  def change
    create_table :item_catalogs, id: :uuid do |t|
      t.string :name, null: false, index: { unique: true }
      t.boolean :is_weapon, default: false
      t.boolean :is_armor, default: false
      t.integer :armor_type, null: true
      t.boolean :is_food, default: false
      t.integer :stats, null: false
      t.integer :rarity, default: 0
      t.integer :value, null: false

      t.timestamps
    end
  end
end
