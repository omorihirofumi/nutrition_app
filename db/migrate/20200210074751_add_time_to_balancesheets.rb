class AddTimeToBalancesheets < ActiveRecord::Migration[5.2]
  def change
    add_column :balancesheets, :time, :date
  end
end
