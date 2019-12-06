class AddNullConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:tests, :title, false)
    change_column_null(:tests, :level, false)
    change_column_null(:questions, :body, false)
    change_column_null(:answers, :title, false)
    change_column_null(:users, :username, false)
  end
end
