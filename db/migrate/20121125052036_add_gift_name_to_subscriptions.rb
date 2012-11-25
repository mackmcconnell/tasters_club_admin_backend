class AddGiftNameToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :gift_name, :string
  end
end
