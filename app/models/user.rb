class User < ApplicationRecord
  has_many :completed_tests
  has_many :tests, through: :completed_tests
  has_many :author_tests, :class_name => 'Test', foreign_key: 'author_id'
  
  validates :username, presence: true

  def list_of_tests(level)
    self.tests.where("level = ?", level)
  end
end
