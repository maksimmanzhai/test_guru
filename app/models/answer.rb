class Answer < ApplicationRecord
  scope :correct_answer, -> { where(correct: true) }

  belongs_to :question, touch: true

  validates :title, presence: true
end
