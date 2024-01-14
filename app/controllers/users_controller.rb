class UsersController < ApplicationController
  def show
    user = User.find_by(user_name: params[:id])

    if user
      @user_name = user.user_name
      @user_avatar = user.avatar
      @vouchers = user.vouchers.where(status: 2).order("created_at DESC")
    else
      redirect_to root_path, alert: 'User not found'
    end
  end
end
