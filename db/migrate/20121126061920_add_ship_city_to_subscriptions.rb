class AddShipCityToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :ship_city, :string
  end
end
