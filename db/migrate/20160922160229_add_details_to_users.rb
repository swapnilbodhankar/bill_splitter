class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :total_amount_to_pay, :float
    add_column :users, :to_pay, :string
  end
end
