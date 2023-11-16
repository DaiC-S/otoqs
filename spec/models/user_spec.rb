require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー管理 アカウント作成' do
    context 'アカウントを新規作成できる場合（正常系）' do
      it 'user_name, email, passwordおよびpassword_confirmationが正しいデータ型で入力された場合、新規作成できる' do
        expect(@user).to be_valid
      end
    end
    context 'アカウントを新規作成できない場合（異常系）' do
      it 'user_nameが空の場合、新規作成できない' do
        @user.user_name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("User name can't be blank")
      end
      it 'user_nameが全角文字を含む場合、新規作成できない' do
      end
      it '同じuser_nameが存在する場合、新規作成できない' do
      end
      it 'emailが空の場合、新規作成できない' do
      end
      it 'emailに@が含まれない場合、新規作成できない' do
      end
      it '同じemailが存在する場合、新規作成できない' do
      end
      it 'passwordが空の場合、新規作成できない' do
      end
      it 'passwordが5文字以下の場合、新規作成できない' do
      end
      it 'password_confirmationが空の場合、新規作成できない' do
      end
      it 'passwordが全角文字を含む場合、新規作成できない' do
      end
      it 'passwordとpassword_confirmationが一致しない場合、新規作成できない' do
      end
      it 'passwordが半角英字のみの場合、アカウントを新規作成できない' do
        @user.password = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it 'passwordが半角数字のみの場合、アカウントを新規作成できない' do
        @user.password = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
    end
  end
end
