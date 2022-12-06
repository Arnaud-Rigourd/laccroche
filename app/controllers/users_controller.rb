class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @projects = @user.projects
    authorize @user
    @liked_projects = Project.all
    @collabs = collabs
  end

  private

  def collabs
    @all_collabs = @projects.map do |p|
      p.collab if p.collab.present?
    end

    @collabs = @all_collabs.map do |c|
      c.split(" ") unless c.nil?
    end

    @collabs = @collabs.join(" ").split(" ").uniq.join(", ")
  end
end
