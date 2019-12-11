class User < ApplicationRecord
  has_many :completed_tests
  has_many :tests, through: :completed_tests
  
  def list_of_tests(level)
    self.completed_tests.where("level = ?", level)
  end
end
