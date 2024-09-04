# typed: true

class CreateCollectables < ActiveRecord::Migration[7.2]
  def change
    create_table :collectables, id: :uuid do |t|
      t.string :name, null: false, index: { unique: true }
      t.integer :rarity
      t.references :user, null: true, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
