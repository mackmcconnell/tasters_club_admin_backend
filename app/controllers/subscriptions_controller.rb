class SubscriptionsController < ApplicationController

  def new
    @plan = Stripe::Plan.retrieve("3")
    @subscription = Subscription.new
    puts "=========================="
    puts "=========================="
    puts @plan
    puts @subscription
    puts "=========================="
    puts "=========================="
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
  
  def delete
    deleted_customer = Stripe::Customer.retrieve(params[:subscription_id])
    deleted_customer.delete
    redirect_to admins_path
  end
  
  def history
    redirect_to admins_path
  end


end
