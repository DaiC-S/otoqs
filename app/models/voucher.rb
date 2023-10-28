class Voucher < ApplicationRecord

  belongs_to :user

  with_options presence: true do
    validates :title
    validates :status
    validates :title
  end

  validate :required_either_code_text_or_code_url

  private

  def required_either_code_text_or_code_url
    return if code_text.present? ^ code_url.present?

    errors.add(:base, 'コードまたはURLのどちらか一方のみを入力してください')
  end

end
