class AddLevelToCompletedTests < ActiveRecord::Migration[6.0]
  def change
    add_column :completed_tests, :level, :integer
  end
end
