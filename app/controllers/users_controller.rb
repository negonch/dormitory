
class UsersController < ApplicationController

 
  before_action :authorize_user, except: [:index, :new, :create, :show]

  def index
    @users = User.all
  end

 
  def new
 
    redirect_to root_url, alert: 'Вы уже залогинены' if current_user.present?

  
    @user = User.new
  end

  
  def create
    
    redirect_to root_url, alert: 'Вы уже залогинены' if current_user.present?

  
    @user = User.new(user_params)

  end

  def edit
  end


  private

  def authorize_user
    reject_user unless @user == current_user
  end

end

