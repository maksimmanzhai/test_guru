class Test < ApplicationRecord
  belongs_to :category
  has_many :completed_tests
  has_many :questions

  def self.in_descending_order(category)
    joins(:category).where(categories: { title: category })
                    .order(title: :desc)
                    .pluck(:title)
  end

end
