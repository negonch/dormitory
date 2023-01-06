class ContractsController < ApplicationController

  def index
    @contracts = Contract.all
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new(contract_params)
    if @contract.save
      redirect_to contracts_index_path, notice: 'Данные добавлены'
    else
      render 'new'
    end
  end

  def show
    @contract = Contract.find(params[:id])
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update

    @contract = Contract.find(params[:id])

    if @contract.update(contract_params)
      redirect_to contracts_index_path, notice: 'Данные обновлены'
    else
      render 'edit'
    end
  end


  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy

    redirect_to contracts_index_path, notice: 'Данные удалены'
  end

  private

  def contract_params

    params.require(:contract).permit(:number_contract, :date_signing, :expiration_date, :direction_number, :direction_date, :category_study, :student_id)
  end

end