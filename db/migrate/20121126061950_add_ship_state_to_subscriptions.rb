class AddShipStateToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :ship_state, :string
  end
end
