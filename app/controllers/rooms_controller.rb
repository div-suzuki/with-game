class RoomsController < ApplicationController
  def index
    @rooms = Room.includes(:user).order("created_at DESC")
  end
<<<<<<< Updated upstream
=======

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

  private
  def room_params
    params.require(:room).permit(:tag_id, :member_id, :text)
  end
>>>>>>> Stashed changes
end
