class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :show]
  before_action :set_user

  def home
  end

  def show
  end

  def profil
  end

  def about
  end

  private

  def set_user
    @user = current_user
  end
end
