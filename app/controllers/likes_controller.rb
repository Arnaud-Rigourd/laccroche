class LikesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @like = Like.new
    @like.user = current_user
    @like.project = @project
    authorize @like

    if @like.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
