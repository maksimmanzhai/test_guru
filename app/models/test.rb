class Test < ApplicationRecord
  belongs_to :category, touch: true
  belongs_to :user, touch: true
  has_many :questions
  has_many :answers, through: :questions
  has_many :completed_tests

  def self.in_descending_order(category)
    joins(:category).where(categories: { title: category }).order(title: :desc).pluck(:title)
  end

end
