class AddDetailsToUserPaids < ActiveRecord::Migration
  def change
    add_column :user_paids, :amount_to_get, :float
    add_column :user_paids, :amount_to_pay, :float
  end
end
