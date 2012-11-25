class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.integer :card_number
      t.integer :card_code
      t.string :card_month

      t.timestamps
    end
  end
end
