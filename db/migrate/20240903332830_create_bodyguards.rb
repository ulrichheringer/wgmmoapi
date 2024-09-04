# typed: true

class CreateBodyguards < ActiveRecord::Migration[7.2]
  def change
    create_table :bodyguards do |t|
      t.references :characters, null: false, foreign_key: true
      t.references :banks, null: false, foreign_key: true, type: :uuid
      t.timestamps
    end
  end
end
