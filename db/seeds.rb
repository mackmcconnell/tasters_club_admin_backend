# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@plan1 = Plan.new(:name => "Bourbon Gold", :monthly_charge => 65)
@plan1.save
@plan2 = Plan.new(:name => "Bourbon Monthly", :monthly_charge => 65)
@plan2.save
@plan3 = Plan.new(:name => "Scotch Gold", :monthly_charge => 75)
@plan3.save
@plan4 = Plan.new(:name => "Bourbon Monthly", :monthly_charge => 75)
@plan4.save