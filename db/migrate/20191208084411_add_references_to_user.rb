class AddReferencesToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :category, index: true, foreign_key: true
  end
end