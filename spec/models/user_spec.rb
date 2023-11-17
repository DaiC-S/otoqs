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
        @user.user_name = 'たろう'
        @user.valid?
        expect(@user.errors.full_messages).to include("User name is invalid")
      end
      it '同じuser_nameが存在する場合、新規作成できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.user_name = @user.user_name
        another_user.valid?
        expect(another_user.errors.full_messages).to include("User name has already been taken")
      end
      it 'emailが空の場合、新規作成できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'emailに@が含まれない場合、新規作成できない' do
        @user.email = 'testmail'
        @user.valid?
        expect(@user.errors.full_messages).to include("Email is invalid")
      end
      it '同じemailが存在する場合、新規作成できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it 'passwordが空の場合、新規作成できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが5文字以下の場合、新規作成できない' do
        @user.password = '1a1a1'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it 'password_confirmationが空の場合、新規作成できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordが全角文字を含む場合、新規作成できない' do
        @user.password = '1aあ1aあ'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is invalid")
      end
      it 'passwordとpassword_confirmationが一致しない場合、新規作成できない' do
        @user.password = '1a1a1a'
        @user.password_confirmation = '1a1a1a1'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
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
