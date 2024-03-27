class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # Empty method for the create action
  end
end
