class CreateUserPaids < ActiveRecord::Migration
  def change
    create_table :user_paids do |t|
      t.float :amount
      t.integer :event_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
