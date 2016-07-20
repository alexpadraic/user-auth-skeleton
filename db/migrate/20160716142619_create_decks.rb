class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string  :name, presence: true
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
