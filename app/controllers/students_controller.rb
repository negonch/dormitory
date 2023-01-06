class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_index_path, notice: 'Данные добавлены'
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update

    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to students_index_path, notice: 'Данные обновлены'
    else
      render 'edit'
    end
  end


  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_index_path, notice: 'Данные удалены'
  end

  private

  def student_params

    params.require(:student).permit(:surname, :name, :patronymic, :date_birth, :country_residense, :citizenchip, :passport, :address, :phone_number, :sex_id, :room_id, :group_id, :badge_id)
  end
end
