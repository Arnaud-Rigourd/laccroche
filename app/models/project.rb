class Project < ApplicationRecord
  CATEGORIES = ["Music", "Video Art", "Artwork"]

  has_many :likes
  belongs_to :user

  has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
