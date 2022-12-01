class ProjectsController < ApplicationController
  before_action :set_user

  def index
    @projects = policy_scope(Project)

    # Search
    if params[:query].present?
      @projects = Project.global_search(params[:query])
    # Category filter
    elsif params[:category].present?
    @projects = @projects.where(category: params[:category])
    else
      @projects = @projects.none
    end
  end

  def show
    @project = Project.find(params[:id])
    authorize @project
     @project_liked = current_user.likes.where(project: @project).exists?
  end

  def new
    @project = Project.new
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    authorize @project

    if @project.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def top
    @projects = Project.all
    authorize @projects
    @top = @projects.sort_by { |p| p.likes.length }.reverse!
    @top10 = @top.first(10)
  end

  # def top(category)
  #   @projects = Project.all
  #   authorize @projects
  #   @project_category = @projects.select { |p| p.category == category }
  #   @top = @project_category.sort_by { |p| p.likes.length }
  #   @top10 = @top.first(10)
  # end

  private

  def project_params
    params.require(:project).permit(:title, :description, :category, :photo)
  end

  def set_user
    @user = current_user
  end
end
