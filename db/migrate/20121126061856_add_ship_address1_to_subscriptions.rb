class AddShipAddress1ToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :ship_address_1, :string
  end
end
