class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date_of_event
      t.string :location
      t.float :amount

      t.timestamps null: false
    end
  end
end
