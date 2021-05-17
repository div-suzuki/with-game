class RoomsController < ApplicationController
  def index
    @rooms = Room.includes(:user).order("created_at DESC")
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @room = Room.find(params[:id])
    @tags = @room.tag_counts_on(:tags)
  end

  private
  def room_params
    params.require(:room).permit(:title, :psid, :tag_list, :member_id, :text).merge(user_id: current_user.id)
  end

end
