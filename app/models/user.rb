class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :vouchers, dependent: :destroy

  with_options presence: true do
    validates :user_name, format: { with: /\A[a-zA-Z0-9]+\z/ }
  end
end
