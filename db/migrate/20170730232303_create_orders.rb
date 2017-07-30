class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :user_email
      t.integer :user_credit_card
      t.integer :user_expiration_date
      t.integer :showtime_id

      t.timestamps
    end
  end
end
