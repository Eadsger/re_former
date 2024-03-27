class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index
    @users = User.all
  end

  def show
    # Find user by ID and render show view
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle successful user creation
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def edit
    # Render edit form
  end

  def update
    if @user.update(user_params)
      # Handle successful user update
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
