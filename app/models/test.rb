class Test < ApplicationRecord
  belongs_to :category, touch: true
  has_many :questions
  has_many :answers, through: :questions
  has_many :completed_tests
  has_many :authors
  has_many :users, through: :authors

  def self.in_descending_order(category)
    joins(:category).where(categories: { title: category }).order(title: :desc).pluck(:title)
  end

end
