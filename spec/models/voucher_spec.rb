require 'rails_helper'

RSpec.describe Voucher, type: :model do
  before do
    @voucher = FactoryBot.build(:voucher)
  end
  describe 'トクテンの新規保存' do
    context 'トクテンが保存できる場合（正常系）' do
      it 'トクテン名だけ入力されれば情報を保存できる' do
        @voucher.code_text = ''
        @voucher.code_url = ''
        expect(@voucher).to be_valid
      end
    end
    context 'トクテンが保存できない場合（異常系）' do
      it 'トクテン名が空だと保存できない' do
        @voucher.title = ''
        @voucher.valid?
        expect(@voucher.errors.full_messages).to include("Title can't be blank")
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
