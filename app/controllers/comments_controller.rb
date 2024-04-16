class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_workorder

  def create
    @comment = @workorder.comments.create(comment_params)
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Comment added!"
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

  def update
    @comment = @workorder.comments.find(params[:id])

    respond_to do |format|
      if @comment.update(comment_params)
        format.html {redirect_to workorder_path(@workorder), notice: 'Comment has been updated'}
      else
        format.html {redirect_to workorder_path(@workorder), alert: 'Comment was not updated.'}
      end
    end
  end

  private

  def set_workorder
    @workorder = Workorder.find(params[:workorder_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
