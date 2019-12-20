class Answer < ApplicationRecord
  MAX_COUNT_OF_ANSWERS_TO_QUESTION = 4

  scope :correct_answer, -> { where(correct: true) }

  belongs_to :question, touch: true

  validates :title, presence: true
  validate :answer_count, on: :create

  private

  def answer_count
    if question.answers.count >= 4
      errors.add(:MAX_COUNT_OF_ANSWERS_TO_QUESTION, 'There should be no more than 4 answers')
    end
  end

end
