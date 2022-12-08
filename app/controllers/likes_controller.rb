class LikesController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @like = Like.new
    @like.user = current_user
    @like.project = @project
    authorize @like

    respond_to do |format|
      if @like.save
        format.html { redirect_to project_path(@project) }


      # avant modif AJAX -------->
        # redirect_to project_path(@project)
      # fin modif -------------
      else
        format.html { render :new, status: :unprocessable_entity }



        # avant modif AJAX -------->
        #  render :new, status: :unprocessable_entity
        # fin modif -------------
      end
      format.text { render partial: 'shared/counter_like', locals: { project_liked: current_user.likes.where(project: @project).exists?, project: @project }, formats: [:html]}
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @project = @like.project
    authorize @like
    @like.destroy
    @project_liked = current_user.likes.where(project: @project).exists?

    respond_to do |format|
      format.html { redirect_to project_path(@project) }
      format.text { render partial: 'shared/counter_like', locals: { project_liked: current_user.likes.where(project: @project).exists?, project: @project }, formats: [:html] }

    end
  end
end
