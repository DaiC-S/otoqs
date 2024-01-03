FactoryBot.define do
  factory :user do
    user_name {'test0'}
    email {Faker::Internet.email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
  end
end
