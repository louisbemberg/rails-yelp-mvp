class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  VALID_CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :name, :address, presence: true
  # validates :category, presence: true,
  validates_inclusion_of :category, in: VALID_CATEGORIES
end
