# 3. Позволяет разлогиниваться (удаляет сессию)
class SessionsController < ApplicationController
  # Пустой экшен, только показывает свой шаблон
  def new
  end

  # Создает в объекте session новый факт залогиненности пользователя, если он
  # правильно сообщил мэйл/пароль
  def create
    @user = User.authenticate(params[:email], params[:password])

    if @user.present?
      session[:user_id] = @user.id
      redirect_to users_url, notice: 'Вы успешно залогинились'
    else
      redirect_to root_url, notice: 'Неправильный мэйл или пароль'
    end
  end

  # Удаляет сессию залогиненного юзера
  def destroy
    # Затираем в сессии значение ключа :user_id
    session[:user_id] = nil

    # Редиректим пользователя на главную с сообщением
    redirect_to root_url, notice: 'Вы разлогинились! Приходите еще!'
  end
end
