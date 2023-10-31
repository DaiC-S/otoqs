class VouchersController < ApplicationController

  before_action :move_to_index, except: [:index]

  def index
    @vouchers = Voucher.all
  end

  def new
    @voucher = Voucher.new
  end
  
  def create
    @voucher = Voucher.create(voucher_params)
    if @voucher.save
      redirect_to '/'
    else
      render '/vouchers/new', status: :unprocessable_entity 
    end
  end

  def show
    @voucher = Voucher.find(params[:id])
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
