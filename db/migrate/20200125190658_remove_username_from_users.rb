class RemoveUsernameFromUsers < ActiveRecord::Migration[6.0]
  def up
    remove_column :users, :username
  end

  def down
    add_column :users, :username
  end

end
