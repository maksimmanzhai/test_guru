class User < ApplicationRecord
  def list_of_test(level)
    CompletedTest.where("user_id = ? AND test_id = ?", self.id, level)
  end
end
