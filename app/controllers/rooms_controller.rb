class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_index_path, notice: 'Данные добавлены'
    else
      render 'new'
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update

    @room = Room.find(params[:id])

    if @room.update(room_params)
      redirect_to rooms_index_path, notice: 'Данные обновлены'
    else
      render 'edit'
    end
  end


  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    redirect_to rooms_index_path, notice: 'Данные удалены'
  end

  private

  def room_params

    params.require(:room).permit(:room_number, :number_persons, :comment)
  end
end

