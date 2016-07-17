class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :full_name, presence: true
  		t.string :username, uniqueness: true, presence: true
  		t.string :password_digest
  		t.string :email, uniqueness: true, presence: true
  		t.timestamps null: false
  	end
  end
end
