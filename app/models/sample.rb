class Sample < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :sample_files
  accepts_nested_attributes_for :sample_files, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
end
