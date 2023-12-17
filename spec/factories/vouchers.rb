FactoryBot.define do
  factory :voucher do
    title {'サンプル1'}
    code_text {'Aa1Aa1'}
    code_url {nil}
    status {1}
    shared_benefit {'1,000円、キャッシュバック'}
    shared_action {'新規会員登録時、招待コードを入力'}
    info {'テストテストテスト'}
    date {Date.today - 30.days}
    association :user
  end
end
