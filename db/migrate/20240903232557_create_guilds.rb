# typed: false

class CreateGuilds < ActiveRecord::Migration[7.2]
  def change
    create_table :guilds, id: :uuid do |t|
      t.string :name, null: false, index: { unique: true }
      t.uuid :owner_id, null: false
      t.integer :xp, default: 0
      t.integer :level, default: 0
      t.integer :rank, default: 0

      t.timestamps
    end
  end
end
