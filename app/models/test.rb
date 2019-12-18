class Test < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :category, touch: true
  has_many :questions
  has_many :answers, through: :questions
  has_many :completed_tests

  scope :difficulty_level, ->(level) { where(level: level) }

  scope :easy, -> { difficulty_level(0..1) }
  scope :medium, -> { difficulty_level(2..4) }
  scope :hard, -> { difficulty_level(5..Float::INFINITY) }

  def self.in_descending_order(category)
    joins(:category).where(categories: { title: category } ).order(title: :desc).pluck(:title)
  end

end
