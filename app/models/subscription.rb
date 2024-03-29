class Subscription < ActiveRecord::Base
  attr_accessible :card_code, :card_month, :card_number, :email, :stripe_card_token, :plan_id, :stripe_customer_token, :gift, :shipping_address, :gift_name, :recipient_email, :ship_first_name, :ship_last_name, :ship_address_1, :ship_address_2, :ship_city, :ship_state, :ship_zip
  attr_accessor :stripe_card_token
  belongs_to :plan

  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  # rescue Stripe::InvalidRequestError => e
  #   logger.error "Stripe error whiel creating customer: #{e.message}"
  #   errors.add :base, "There was a problem with your credit card."
  #   false
  # end
  end
end
