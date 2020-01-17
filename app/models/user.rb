require 'digest/sha1'

class User < ApplicationRecord

  include Auth

  has_many :completed_tests
  has_many :tests, through: :completed_tests
  has_many :author_tests, :class_name => 'Test', foreign_key: 'author_id'

  def list_of_tests(level)
    self.tests.where("level = ?", level)
  end

  def completed_test(test)
    completed_tests.order(id: :desc).find_by(test_id: test.id)
  end

end
