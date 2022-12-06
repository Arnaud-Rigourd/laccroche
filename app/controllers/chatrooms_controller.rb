class ChatroomsController < ApplicationController
  def show
    raise
  end

  def create
    user = User.find(params[:user_id])

    query = <<~SQL
      (user1_id = :user_id AND user2_id = :current_user_id) OR
      (user1_id = :current_user_id AND user2_id = :user_id)
    SQL

    chatroom = Chatroom.where(query, user_id: user.id, current_user_id: current_user.id).first

    unless chatroom
      chatroom = Chatroom.create!(user1: current_user, user2: user)
    end

    authorize chatroom
    redirect_to chatroom_path(chatroom)
  end
end
