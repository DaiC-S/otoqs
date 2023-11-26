class AddPositionToVouchers < ActiveRecord::Migration[7.0]
  def change
    add_column :vouchers, :position, :integer
  end
end
