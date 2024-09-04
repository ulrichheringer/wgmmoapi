# typed: false

class CreateBanks < ActiveRecord::Migration[7.2]
  def change
    create_table :banks, id: :uuid do |t|
      t.string :name, null: false, index: { unique: true }
      t.integer :xp, default: 0
      t.integer :level, default: 0
      t.uuid :owner_id, null: false

      t.timestamps
    end
  end
end
