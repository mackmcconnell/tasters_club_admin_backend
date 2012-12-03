class AdminsController < ApplicationController
  
  def index
    @subscriptions = Subscription.all
  end
  
  def delete(customer)
    Stripe::Customer.retrieve(customer["id"])
    puts
  end
  
end