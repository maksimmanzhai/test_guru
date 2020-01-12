class AddReferenceToCompletedTests < ActiveRecord::Migration[6.0]
  def up
    change_table :completed_tests do |t|
      t.references :current_question, foreign_key: { to_table: :questions }
    end
  end

  def down
    remove_column :completed_tests, :current_question_id, :integer
  end
end
