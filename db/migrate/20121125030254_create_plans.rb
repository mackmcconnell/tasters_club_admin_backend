class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :monthly_charge

      t.timestamps
    end
  end
end
