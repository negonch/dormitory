class BadgesController < ApplicationController

  def index
    @badges = Badge.all
  end

  def new
    @badge = Badge.new
  end

  def create
    @badge = Badge.new(badge_params)
    if @badge.save
      redirect_to badges_index_path, notice: 'Данные добавлены'
    else
      render 'new'
    end
  end

  def show
    @badge = Badge.find(params[:id])
  end

  def edit
    @badge = Badge.find(params[:id])
  end

  def update

    @badge = Badge.find(params[:id])

    if @badge.update(badge_params)
      redirect_to badges_index_path, notice: 'Данные обновлены'
    else
      render 'edit'
    end
  end


  def destroy
    @badge = Badge.find(params[:id])
    @badge.destroy

    redirect_to badges_index_path, notice: 'Данные удалены'
  end

  private

  def badge_params
    params.require(:badge).permit(:id, :number, :date_issue, :comment)
  end
end

