class User < ApplicationRecord
  def list_of_test(level)
    Test.where("level = ?", level)
  end
end
