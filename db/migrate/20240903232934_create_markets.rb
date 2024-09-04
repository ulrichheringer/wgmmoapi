# typed: true

class CreateMarkets < ActiveRecord::Migration[7.2]
  def change
    create_table :markets do |t|
      t.integer :value, null: false

      t.timestamps
    end
  end
end
