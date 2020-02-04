class ChangeUserIdName < ActiveRecord::Migration[6.0]
  def up
    rename_column :tests, :user_id, :author_id
  end

  def down
    rename_column :tests, :author_id, :user_id
  end
end
