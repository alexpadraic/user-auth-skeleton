class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :correct_on_first_try, presence: true, default: 0
      t.integer :total_guesses, presence: true, default: 0
      t.integer :deck_id, presence: true
      t.integer :user_id, presence: true

      t.timestamps null: false
    end
  end
end
