class CompletedTest < ApplicationRecord
  belongs_to :user, touch: true
  belongs_to :test, touch: true
  belongs_to :current_question, touch: true
end
