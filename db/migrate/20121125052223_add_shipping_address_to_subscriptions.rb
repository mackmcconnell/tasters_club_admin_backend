class AddShippingAddressToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :shipping_address, :text
  end
end
