class CreateGuesses < ActiveRecord::Migration
  def change
  	create_table :guesses do |t|
  		t.boolean :first_try?, null: false
  		t.belongs_to :round
  		t.timestamps null: false  		
  	end
  end
end
