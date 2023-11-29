class AddSharedBenefitToVouchers < ActiveRecord::Migration[7.0]
  def change
    add_column :vouchers, :shared_benefit, :string
  end
end
