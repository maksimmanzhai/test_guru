class User < ApplicationRecord
  has_many :tests
  has_many :completed_tests

  def list_of_tests(level)
    self.tests.where("level = ?", level)
  end
end
