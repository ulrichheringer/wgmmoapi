class CreateCharacters < ActiveRecord::Migration[7.2]
  def change
    create_table :characters do |t|
      t.integer :xp, default: 0
      t.integer :gold, default: 0
      t.integer :attack, default: 0
      t.integer :defense, default: 0
      t.integer :health, default: 0
      t.integer :job, default: 0
      t.boolean :wanted, default: false
      t.integer :bounty, default: 0
      t.integer :fish_level, default: 0
      t.integer :craft_level, default: 0
      t.integer :smith_level, default: 0
      t.integer :wood_level, default: 0
      t.integer :bounty_level, default: 0
      t.integer :thief_level, default: 0
      t.integer :player_kills, default: 0
      t.integer :bot_kills, default: 0
      t.integer :banker_level, default: 0
      t.integer :dungeon_level, default: 0
      t.integer :dungeon_ranking, default: 0
      t.integer :energy, default: 0
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
