class VouchersController < ApplicationController
  before_action :authenticate_user!
  before_action :not_existing_voucher, only: [:show, :edit]
  before_action :set_voucher, only: [:show, :destroy, :edit, :update]
  before_action :user_matched, only: [:show, :edit]

  def index
    @vouchers = Voucher.order("created_at DESC")
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
  end

  def destroy
    @voucher.destroy
    redirect_to '/'
  end

  def edit
  end

  def update
    if @voucher.update(voucher_params)
      redirect_to voucher_path(@voucher.id)
    else
      render '/vouchers/edit', status: :unprocessable_entity
    end
  end

  def update_order
    params[:voucher_order].each_with_index do |id, index|
      current_user.vouchers.find(id).update(position: index)
    end
    head :ok
  end

  private

  def voucher_params
    params.require(:voucher).permit(:title, :code_text, :code_url, :status, :info, :date, :position, :shared_benefit, :shared_action).merge(user_id: current_user.id)
  end

  def not_existing_voucher
    unless Voucher.find_by(id: params[:id]).present?
      redirect_to '/'
    end
  end

  def set_voucher
    @voucher = Voucher.find(params[:id])
  end

  def user_matched
    if current_user.id != @voucher.user_id
      redirect_to '/'
    end
  end
end
