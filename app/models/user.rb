class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :likes, dependent: :destroy
  has_many :projects, dependent: :destroy

  validates :nickname, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  # Toutes les chatrooms d'un user
  def chatrooms
    Chatroom.where("user1_id = :id OR user2_id = :id", id: id)
  end
end
