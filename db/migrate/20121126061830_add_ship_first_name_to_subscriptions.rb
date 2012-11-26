class AddShipFirstNameToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :ship_first_name, :string
  end
end
