class AddShipZipToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :ship_zip, :integer
  end
end
