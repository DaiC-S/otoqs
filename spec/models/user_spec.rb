require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー 新規登録' do
    context 'アカウントを新規作成できる場合（正常系）' do
      it 'user_name, email, passwordおよびpassword_confirmationが正しいデータ型で入力されれば登録できる' do
        expect(@user).to be_valid
      end
    end
    context 'アカウントを新規作成できない場合（異常系）' do
      it 'user_nameが空では新規作成できない' do
        @user.user_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("User name can't be blank")
      end
      it '同じuser_nameがデータベースに存在するためアカウントを新規作成できない' do
      end
      it 'passwordが半角英字のみの場合、アカウントを新規作成できない' do
      end
      it 'passwordが半角数字のみの場合、アカウントを新規作成できない' do
      end
    end
  end
end
