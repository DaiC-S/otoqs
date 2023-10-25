class VouchersController < ApplicationController
  def index
    @@vouchers = Voucher.all
  end

  def new
    @voucher = Voucher.new
  end
  
  def create
  end
end
