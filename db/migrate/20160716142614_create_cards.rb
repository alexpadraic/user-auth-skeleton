class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :question, presence: true
      t.string :answer, presence: true
      t.integer :deck_id, presence: true
    end
  end
end
