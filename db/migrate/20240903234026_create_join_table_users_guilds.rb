class CreateJoinTableUsersGuilds < ActiveRecord::Migration[7.2]
  def change
    create_join_table :users, :guilds do |t|
      t.index [ :user_id, :guild_id ]
      t.index [ :guild_id, :user_id ]
    end
  end
end
