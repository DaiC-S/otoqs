class AddSharedActionToVouchers < ActiveRecord::Migration[7.0]
  def change
    add_column :vouchers, :shared_action, :text
  end
end
