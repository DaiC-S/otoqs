FactoryBot.define do
  factory :user do
    user_name {'test'}
    email {'test@mail.com'}
    password {'kurapika404'}
    password_confirmation {password}
  end
end
