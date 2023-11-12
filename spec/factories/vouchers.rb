FactoryBot.define do
  factory :voucher do
    title {'テスト 新規会員登録 1,000円引き'}
    code_text {'Aa1Aa1'}
    code_url {'https://Bb2Bb2.com'}
    status {1}
    info {'テストテストテスト'}
    date {Date.today - 30.days}
    association :user
  end
end
