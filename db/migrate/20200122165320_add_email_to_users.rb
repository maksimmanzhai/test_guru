class AddEmailToUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :email, :string
  end

  def down
    remove_column :users, :email, :string
  end
end
