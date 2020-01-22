class AddEmailToUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :email, :string
    add_index :users, :email
  end

  def down
    remove_index :users, :email
    remove_column :users, :email, :string
  end
end
