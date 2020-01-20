class AddEmailToUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :email, :string
    add_index :users, :email, unique: true
  end

  def down
    remove_column :users, :email, :string
  end

end
