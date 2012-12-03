class SubscriptionsController < ApplicationController

  def new
    @plan = Plan.find(params[:plan_id])
    @subscription = Subscription.new
  end

  def create
    @plan = Plan.find(params[:plan_id])
    @subscription = @plan.subscriptions.new(params[:subscription])
    if @subscription.save_with_payment
      redirect_to plans_path, :notice => "Thank you for subscribing!"
    else
      render :new
    end
  end

  def show
    @subscription = Subscription.find(params[:id])
  end
  
  def delete(customer)
    puts "========================="
    puts "========================="
    puts "========================="
    puts "========================="
    deleted_customer = Stripe::Customer.retrieve(customer["id"])
    deleted_customer.delete
    redirect_to admins_path
  end


end
