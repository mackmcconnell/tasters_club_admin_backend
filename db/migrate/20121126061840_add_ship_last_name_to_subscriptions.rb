class AddShipLastNameToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :ship_last_name, :string
  end
end
