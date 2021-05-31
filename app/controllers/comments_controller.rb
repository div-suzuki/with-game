class CommentsController < ApplicationController
  def index
    @room = Room.find(params[:room_id])
    @comment = Comment.new
    @comments = @room.comments.includes(:user)
  end
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to room_comments_path(@comment.room_id)
    else
      @room = @comment.room
      @comments = @room.comments
      render :index
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, room_id: params[:room_id])
  end
end
