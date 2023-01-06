class GuestsController < ApplicationController
  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def create
    @guests = Guest.new(guest_params)
    if @guests.save
      redirect_to guests_index_path, notice: 'Данные добавлены'
    else
      render 'new'
    end
  end

  def show
    @guests = Guest.find(params[:id])
  end

  def edit
    @guests = Guest.find(params[:id])
  end

  def update

    @guests = Guest.find(params[:id])

    if @guests.update(guest_params)
      redirect_to guests_index_path, notice: 'Данные обновлены'
    else
      render 'edit'
    end
  end


  def destroy
    @guests = Guest.find(params[:id])
    @guests.destroy

    redirect_to guests_index_path, notice: 'Данные удалены'
  end

  private

  def guest_params

    params.require(:guest).permit(:surname, :name, :patronymic, :arrival_date, :departure_date, :student_id)
  end

end
