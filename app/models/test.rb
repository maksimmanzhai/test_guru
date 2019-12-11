class Test < ApplicationRecord
  belongs_to :category, touch: true
  has_many :questions
  has_many :answers, through: :questions
  has_many :completed_tests
end
