class LikesController < ApplicationController
  def create
    @project = Project.find(parmas[:id])
    @like = Like.new(like_params)

    if @like.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def like_parmas
    params.require(:like).permit(:project_id, :user_id)
  end
end
