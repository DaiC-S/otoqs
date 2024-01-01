require 'rails_helper'

RSpec.describe "Users", type: :system do
  before do
    @user = FactoryBot.build(:user)
  end
  context 'アカウント作成ができるとき' do
    it '情報を正しく入力すれば、アカウント作成ができてトップページに移動する'do
      visit new_user_registration_path
      fill_in 'ユーザー名', with: @user.user_name
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      fill_in '確認用パスワード', with: @user.password_confirmation
      expect{
        find('input[name="commit"]').click
        sleep 1
    }.to change{User.count}.by(1)
    expect(page).to have_current_path(root_path)
    end
  end
  context 'アカウント作成ができないとき' do
    it '情報を誤って入力すれば、アカウント作成ができずにアカウント作成ページに戻ってくる'do
    end
  end
end
