class Test < ApplicationRecord
  belongs_to :category

  def self.in_descending_order(title)
    category_tests(title).order("tests.title desc").pluck("tests.title")
  end
end
