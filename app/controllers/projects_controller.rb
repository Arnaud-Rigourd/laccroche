class ProjectsController < ApplicationController
  before_action :set_user

  def index
    @projects = policy_scope(Project)

    # Search
    if params[:query].present?
      @projects = @projects.joins(:user).where("title ILIKE :query OR users.nickname ILIKE :query", query: "%#{params[:query]}%")

    # Category filter
    elsif params[:category].present?
      @projects = @projects.where(category: params[:category])
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

    # Convert Spotify URL given by the user into a URL which can be embedded in HTML
    # METHOD NEEDS TO BE TESTED WHEN THE NEW FORM IS UPDATED WITH MUSIC URL -- WORKS IN CONSOLE STEP BY STEP
    regex = /track\/(?<spotify_id>\w+)\?/
    id = @project.music_url.match(regex)[:spotify_id]
    @project.music_url = "https://open.spotify.com/embed/track/#{id}?utm_source=generator&theme=0"

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
