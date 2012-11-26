class Plan < ActiveRecord::Base
  attr_accessible :monthly_charge, :name
  has_many :subscriptions

end
