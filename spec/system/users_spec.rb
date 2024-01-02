require 'rails_helper'

RSpec.describe 'アカウント作成', type: :system do
  before do
    @user = FactoryBot.build(:user)
  end
  context 'アカウント作成ができるとき（正常系）' do
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
  context 'アカウント作成ができないとき（異常系）' do
    it '情報を誤って入力すれば、アカウント作成ができずにアカウント作成ページに戻ってくる'do
      visit new_user_registration_path
      fill_in 'ユーザー名', with: ''
      fill_in 'メールアドレス', with: ''
      fill_in 'パスワード', with: ''
      fill_in '確認用パスワード', with: ''
      expect{
        find('input[name="commit"]').click
        sleep 1
      }.to change{User.count}.by(0)
      expect(page).to have_current_path(new_user_registration_path)
    end
  end
end

RSpec.describe 'ログイン', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end
  context 'ログインができるとき（正常系）' do
    it '保存されているユーザーの情報と合致すればログインができる' do
      visit new_user_session_path
      fill_in 'メールアドレス', with: @user.email
      fill_in 'パスワード', with: @user.password
      find('input[name="commit"]').click
      expect(page).to have_current_path(root_path)
    end
  end
  context 'ログインができないとき（異常系）' do
    it '保存されているユーザーの情報と合致しないとログインができない' do
      visit new_user_session_path
      fill_in 'メールアドレス', with: ''
      fill_in 'パスワード', with: ''
      find('input[name="commit"]').click
      expect(page).to have_current_path(new_user_session_path)
    end
  end
end
