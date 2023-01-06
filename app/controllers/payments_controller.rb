class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params)
    if @payment.save
      redirect_to payments_index_path, notice: 'Данные добавлены'
    else
      render 'new'
    end
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def edit
    @payment = Payment.find(params[:id])
  end

  def update

    @payment = Payment.find(params[:id])

    if @payment.update(payment_params)
      redirect_to payments_index_path, notice: 'Данные обновлены'
    else
      render 'edit'
    end
  end


  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy

    redirect_to payments_index_path, notice: 'Данные удалены'
  end

  private

  def payment_params

    params.require(:payment).permit(:check_number, :date_payment, :month_payment, :sum, :student_id)
  end
end
