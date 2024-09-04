# typed: true

class CreatePets < ActiveRecord::Migration[7.2]
  def change
    create_table :pets, id: :uuid do |t|
      t.string :name, null: false
      t.integer :rarity
      t.integer :xp, default: 0
      t.integer :level, default: 0
      t.integer :attack, default: 0
      t.integer :defense, default: 0
      t.integer :health, default: 0
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
