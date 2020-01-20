require 'digest/sha1'

class User < ApplicationRecord

  has_many :completed_tests
  has_many :tests, through: :completed_tests
  has_many :author_tests, :class_name => 'Test', foreign_key: 'author_id'

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }


  has_secure_password

  def list_of_tests(level)
    self.tests.where("level = ?", level)
  end

  def completed_test(test)
    completed_tests.order(id: :desc).find_by(test_id: test.id)
  end

end
