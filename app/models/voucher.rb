class Voucher < ApplicationRecord

  belongs_to :user

  with_options presence: true do
    validates :title
    validates :status
  end

  def status_text
    case status
    when 1
      "非公開（あなただけ閲覧可能な状態）"
    when 2
      "限定公開（あなたのマイページリンクを知っている人のみ閲覧可能な状態）"
    end
  end

  default_scope { order(position: :asc) }

  private

  # def required_either_code_text_or_code_url
  #  return if code_text.present? ^ code_url.present?
  #  errors.add(:base, 'コードまたはURLのどちらか一方のみを入力してください')
  # end

end