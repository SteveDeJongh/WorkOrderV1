class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_workorder

  def create
    @comment = @workorder.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Comment was created."
      redirect_to workorder_path(@workorder)
    else
      flash[:alert] = "Failed to create comment."
      redirect_to workorder_path(@workorder)
    end
  end

  def destroy
    @comment = @workorder.comments.find(params[:id])
    @comment.destroy
    redirect_to workorder_path(@workorder)
  end

  private

  def set_workorder
    @workorder = Workorder.find(params[:workorder_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
