class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :card_which
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :cards, :user_id
  end
end
