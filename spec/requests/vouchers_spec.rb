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
      get root_path
      expect(response.body).to include(@voucher.date.to_s)
    end
    it 'indexアクションにリクエストするとレスポンスに「マイトクテンをシェア」ボタンが存在する' do 
      get root_path
      expect(response.body).to include('マイトクテンをシェア')
    end
    it 'indexアクションにリクエストするとレスポンスに「ログアウト」ボタンが存在する' do 
      get root_path
      expect(response.body).to include('ログアウト')
    end
    it 'indexアクションにリクエストするとレスポンスに「使い方」のURLが存在する' do 
      get root_path
      expect(response.body).to include('使い方')
    end
  end

  describe 'GET #show' do
    it 'showアクションにリクエストすると正常にレスポンスが返ってくる' do 
      get voucher_path(@voucher)
      expect(response.status).to eq 200
    end
    it 'showアクションにリクエストするとレスポンスに保存済みのトクテンの「トクテン名」が存在する' do 
      get voucher_path(@voucher)
      expect(response.body).to include(@voucher.title)
    end
  end

end
