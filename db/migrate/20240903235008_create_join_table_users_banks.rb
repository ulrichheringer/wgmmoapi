class CreateJoinTableUsersBanks < ActiveRecord::Migration[7.2]
  def change
    create_join_table :users, :banks do |t|
      t.index [ :user_id, :bank_id ]
      t.index [ :bank_id, :user_id ]
    end
  end
end
