class ChangeUserIdName < ActiveRecord::Migration[6.0]
  def change
    rename_column :tests, :user_id, :author
  end
end
