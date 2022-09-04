class Category < ApplicationRecord
  has_many :samples

  validates :name, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true, slug: true
end
