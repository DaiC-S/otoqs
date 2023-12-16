class ChangeColumnToAllowNull < ActiveRecord::Migration[7.0]
  def up
    change_column_null :vouchers, :code_text, true
    change_column_null :vouchers, :code_url, true
  end

  def down
    change_column_null :vouchers, :code_text, false
    change_column_null :vouchers, :code_url, false
  end
end
