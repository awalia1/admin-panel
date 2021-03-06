class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :eid
      t.string :email
      t.string :bio
      
      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :eid, unique: true
  end
end
