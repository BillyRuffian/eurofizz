class CreateJoinTableGamesUsers < ActiveRecord::Migration[8.0]
  def change
    create_join_table :games, :users do |t|
      t.index :game_id
      t.index :user_id
    end
  end
end
