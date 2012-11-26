class AddShipAddress2ToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :ship_address_2, :string
  end
end
