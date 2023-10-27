class VouchersController < ApplicationController

  before_action :move_to_index, except: [:index]

  def index
    @vouchers = Voucher.all
  end

  def new
    @voucher = Voucher.new
  end
  
  def create
    Voucher.create(voucher_params)
    redirect_to '/'
  end

  private

  def voucher_params
    params.require(:voucher).permit(:title, :code_text, :code_url, :status, :info, :date).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end
