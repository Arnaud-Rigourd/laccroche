class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @projects = @user.projects
    authorize @user
    @liked_projects = Project.all
  end
end
