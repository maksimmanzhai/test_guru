class Question < ApplicationRecord
  belongs_to :test, touch: true
  has_many :answers
end
