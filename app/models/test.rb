class Test < ApplicationRecord
  belongs_to :category, touch: true
  has_many :questions
  has_many :answers, through: :questions
  has_many :completed_tests

  scope :by_category, ->(category) { joins(:category).where(categories: { title: category }).order(title: :desc) }

  def self.in_descending_order(category)
    by_category(category).pluck(:title)
  end

end
