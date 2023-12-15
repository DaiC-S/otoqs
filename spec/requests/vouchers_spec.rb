require 'rails_helper'

RSpec.describe "Vouchers", type: :request do

  before do
    @voucher = FactoryBot.create(:voucher)
  end

  describe 'GET #index' do
    it "indexアクションにリクエストすると正常にレスポンスが返ってくる" do
    end
  end

end
