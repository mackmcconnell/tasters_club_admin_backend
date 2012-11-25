class AddGiftToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :gift, :boolean
  end
end
