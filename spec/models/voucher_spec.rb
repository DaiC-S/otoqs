require 'rails_helper'

RSpec.describe Voucher, type: :model do
  before do
    @voucher = FactoryBot.build(:voucher)
  end
  describe 'クーポン情報の保存' do
    context 'クーポン情報が保存できる場合（正常系）' do
      it 'クーポンコードの入力がテキスト型のみならば情報を保存できる' do
        @voucher.code_url = ''
        expect(@voucher).to be_valid
      end
      it 'クーポンコードの入力がURL型のみならば保存できる' do
        @voucher.code_text = ''
        expect(@voucher).to be_valid
      end
    end
    context 'クーポン情報が保存できない場合（異常系）' do
      it 'クーポンコードのテキスト型とURL型が両方空だと保存できない' do
        @voucher.code_text = ''
        @voucher.code_url = ''
        @voucher.valid?
        expect(@voucher.errors.full_messages).to include("コードまたはURLのどちらか一方のみを入力してください")
      end
      it 'クーポンコードのテキスト型とURL型が両方入力されると保存できない' do
        @voucher.code_text = 'TEST'
        @voucher.code_url = 'https://test.com'
        @voucher.valid?
        expect(@voucher.errors.full_messages).to include("コードまたはURLのどちらか一方のみを入力してください")
      end
    end
  end
end
