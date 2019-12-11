class CompletedTest < ApplicationRecord
  belongs_to :user, touch: true
  belongs_to :test, touch: true
end
