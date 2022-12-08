class UsersController < ApplicationController
  def show
    @users = User.all
    @user = User.find(params[:id])
    @projects = @user.projects.order(:position)
    authorize @user
    @liked_projects = Project.all
    @collabs = collabs
    @collabs_s = collabs.join(", ")

    # Arnaud / sorting
    # @project_order = @user.projects.map{ |p| p.order }
    # @project_ordered = @project_order.map{ |p| @user.projects.find_by(order: p) }
  end

  private

  def collabs
    @all_collabs = @projects.map do |p|
      p.collab if p.collab.present?
    end

    @collabs = @all_collabs.map do |c|
      c.split(" ") unless c.nil?
    end

    @collabs = @collabs.join(" ").split(" ").uniq
  end
end
