class AddAdmin < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string
    end 
  end
end
