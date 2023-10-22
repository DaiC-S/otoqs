class CreateVouchers < ActiveRecord::Migration[7.0]
  def change
    create_table :vouchers do |t|
      t.references :user,       null: false, foreign_key: true
      t.string     :title,      null: false
      t.string     :code_text,  null: false
      t.text       :code_url,   null: false
      t.integer    :status,     null: false
      t.string     :info
      t.date       :date
      t.timestamps
    end
  end
end