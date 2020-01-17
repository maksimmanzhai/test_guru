require 'digest/sha1'

class User < ApplicationRecord
  has_many :completed_tests
  has_many :tests, through: :completed_tests
  has_many :author_tests, :class_name => 'Test', foreign_key: 'author_id'
  
  validates :username, presence: true

  def list_of_tests(level)
    self.tests.where("level = ?", level)
  end

  def completed_test(test)
    completed_tests.order(id: :desc).find_by(test_id: test.id)
  end

  def authenticate(password_string)
    digest(password_string) == self.password_digest ? self : false
  end

  private

  def digest(string)
    Digest::SHA1.hexdigest(string)
  end

end
