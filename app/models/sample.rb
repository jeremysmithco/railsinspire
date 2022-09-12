class Sample < ApplicationRecord
  enum :status, { private: "private", public: "public" }, prefix: :status

  belongs_to :category
  belongs_to :user
  has_many :sample_files, -> { order(:path) }
  accepts_nested_attributes_for :sample_files, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
end
