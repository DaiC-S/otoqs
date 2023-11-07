class UsersController < ApplicationController
  def show
    user = User.find_by(user_name: params[:id])

    if user
      @user_name = user.user_name
      @vouchers = user.vouchers
    else
      # ユーザーが見つからない場合の処理
      redirect_to root_path, alert: 'User not found'
    end
  end
end
