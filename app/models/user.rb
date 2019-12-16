class User < ApplicationRecord
  has_many :completed_tests
  has_many :tests, through: :completed_tests
  has_one :test

  def list_of_tests(level)
    self.tests.where("level = ?", level)
  end
end
