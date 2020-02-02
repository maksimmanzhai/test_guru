class Category < ApplicationRecord
  default_scope { order(title: :asc) }

  has_many :tests

  validates :title, presence: true

  def translated_title
    I18n.t(title, :scope => 'category')
  end
end
