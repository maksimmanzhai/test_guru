class User < ApplicationRecord
  def list_of_test(level)
    CompletedTest.where("user_id = :user_id AND test_id = :test_id", user_id: self.id, test_id: level)
  end
end
