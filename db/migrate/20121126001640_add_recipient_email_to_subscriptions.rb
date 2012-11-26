class AddRecipientEmailToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :recipient_email, :email
  end
end
