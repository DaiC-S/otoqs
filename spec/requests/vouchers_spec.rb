require 'rails_helper'

RSpec.describe "Vouchers", type: :request do

  before do
    @user = FactoryBot.create(:user)
    @voucher = FactoryBot.create(:voucher, user: @user)
    sign_in @user
  end

  describe 'GET #index' do
    it "indexアクションにリクエストすると正常にレスポンスが返ってくる" do
      get root_path
      expect(response.status).to eq 200
    end
    it 'indexアクションにリクエストするとレスポンスに保存済みのトクテンの「トクテン名」が存在する' do 
      get root_path
      expect(response.body).to include(@voucher.title)
    end
    it 'indexアクションにリクエストするとレスポンスに保存済みのトクテンの「日付」が存在する' do 
    end
  end

end
