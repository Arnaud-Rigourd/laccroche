class Project < ApplicationRecord
  CATEGORIES = ["Music Video", "Motion Design", "Artistic Video", "Artwork", "Shooting"]
  has_many :likes
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
