class UsersController < ApplicationController

  before_action :authenticate_user!

  before_action :current_user,   only: [:edit, :update, :show]

  def show
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    UserMailer.account_activation(@user).deliver_now
    flash[:info] = "Please check your email to activate your account"
    redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = 'Profile Updated!'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def index
    if current_user
      @user = current_user
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
=begin
  # Confirms logged in user


  # Confirms the correct_user
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # Confirms a User is an admin
  def admin_user
    redirect_to(root_url) unless current_user.manager? || current_user.super_user?
  end
=end
end
