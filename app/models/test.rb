class Test < ApplicationRecord
  belongs_to :author_tests, class_name: 'User', foreign_key: 'author_id', optional: true
  belongs_to :category, touch: true
  has_many :questions
  has_many :answers, through: :questions
  has_many :completed_tests
  has_many :users, through: :completed_tests

  scope :difficulty_level, ->(level) { where(level: level) }
  scope :easy, -> { difficulty_level(0..1) }
  scope :medium, -> { difficulty_level(2..4) }
  scope :hard, -> { difficulty_level(5..Float::INFINITY) }
  scope :descending_order, ->(category) { joins(:category).where(categories: { title: category } ) }

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, presence: true, 
                    numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def self.in_descending_order(category)
    descending_order(category).order(title: :desc).pluck(:title)
  end
end
