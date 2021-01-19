class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to manual_path(@comment.manual)
    else
      @manual = @comment.manual
      @comments = @manual.comments
      render "manuals/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, manual_id: params[:manual_id])
  end
end
