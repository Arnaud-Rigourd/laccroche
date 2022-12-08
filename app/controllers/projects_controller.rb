class ProjectsController < ApplicationController
  before_action :set_user

  def index
    # ok
    @projects = policy_scope(Project)

    # Search
    if params[:query].present?
      @projects = Project.global_search(params[:query])
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
    authorize @project
    # Arnaud / sorting
    @project.position = @user.projects.length + 1
    @project.user = current_user

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
    @top_artists = @top10.map { |t| t.user }
  end

  def sort
    @project_sorted = params[:projectOrdered].split(",").map{ |id| Project.find(id.to_i) }

    @project_sorted.each_with_index do |p, index|
      p.position = index + 1
      p.save
    end

    @user = current_user
    authorize Project.first
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :category, :photo, :music_url, :video_url)
  end

  def set_user
    @user = current_user
  end
end
