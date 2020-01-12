class AddColumnToCompletedTests < ActiveRecord::Migration[6.0]
  def up
    add_column :completed_tests, :correct_questions, :integer, default: 0
  end

  def down
    remove_column :completed_tests, :correct_questions, :integer
  end
end
