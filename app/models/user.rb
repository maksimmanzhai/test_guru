class User < ApplicationRecord
  has_many :completed_test

  def list_of_test(level)
    Test.where("level = ?", level)
  end
end
