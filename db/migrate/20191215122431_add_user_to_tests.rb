class AddUserToTests < ActiveRecord::Migration[6.0]
  def up
    add_reference :tests, :user, index: true, foreign_key: true
  end

  def down
    remove_reference :tests, :user, index: true, foreign_key: true
  end
end
