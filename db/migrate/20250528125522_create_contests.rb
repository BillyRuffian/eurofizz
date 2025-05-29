class CreateContests < ActiveRecord::Migration[8.0]
  def change
    create_table :contests do |t|
      t.integer :year
      t.string :name

      t.timestamps
    end
    add_index :contests, :year
  end
end
