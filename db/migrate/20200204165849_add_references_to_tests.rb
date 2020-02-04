class AddReferencesToTests < ActiveRecord::Migration[6.0]
  def up
    add_reference :tests, :user, foreign_key: true
  end

  def down
    remove_column :tests, :user_id
  end
end
