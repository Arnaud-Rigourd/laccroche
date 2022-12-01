class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :likes, dependent: :destroy
  has_many :projects, dependent: :destroy

  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  # include PG_search
  include PgSearch::Model
  pg_search_scope :search_by_user,
    against: [ :first_name, :last_name, :nickname ],
    using: {
      tsearch: { prefix: true }
    }
  # fin PG_Search
end
