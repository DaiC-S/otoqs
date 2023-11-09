class UsersController < ApplicationController
  def show
    user = User.find_by(user_name: params[:id])

    if user
      @user_name = user.user_name
      @vouchers = user.vouchers.where(status: 2)
    else
      redirect_to root_path, alert: 'User not found'
    end
  end
end
