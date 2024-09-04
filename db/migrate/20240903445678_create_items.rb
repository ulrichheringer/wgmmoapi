# typed: true

class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items do |t|
      t.references :item_catalogs, null: false, foreign_key: true, type: :uuid
      t.references :markets, null: true, foreign_key: true
      t.timestamps
    end
  end
end
