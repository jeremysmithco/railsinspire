class Sample < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :sample_files
end
